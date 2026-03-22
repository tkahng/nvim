return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "K", vim.lsp.buf.hover, desc = "Hover" },
          },
        },
        gopls = {
          settings = {
            gopls = {
              staticcheck = false,
            },
          },
        },
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                experimental = {
                  enableProjectDiagnostics = true,
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "ray-x/go.nvim",
    ft = { "go", "gomod", "gosum" },
    dependencies = {
      "mfussenegger/nvim-dap", -- Debug Adapter Protocol
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    -- config = true,
    opts = {
      -- verbose = true,
      -- lsp_cfg = true,
      -- gopls = {
      --   settings = {
      --     gopls = {
      --       staticcheck = false,
      --     },
      --   },
      -- },
    },
  },
  -- {
  --   "nvim-java/nvim-java",
  --   config = function()
  --     require("java").setup()
  --     vim.lsp.enable("jdtls")
  --   end,
  -- },
  {
    "mfussenegger/nvim-lint",
    opts = {
      events = { "BufWritePost", "BufReadPost", "InsertLeave" },
      linters_by_ft = {
        go = { "golangcilint" },
      },
    },
  },
  {
    "stevearc/aerial.nvim",
    keys = {
      { "<leader>cs", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
      { "{", "<cmd>AerialPrev<cr>", desc = "Aerial Previous", mode = "n" },
      { "}", "<cmd>AerialNext<cr>", desc = "Aerial Next", mode = "n" },
    },
  },
}
