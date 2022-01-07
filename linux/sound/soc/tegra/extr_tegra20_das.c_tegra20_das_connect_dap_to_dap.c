
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENODEV ;
 int TEGRA20_DAS_DAP_CTRL_SEL ;
 int TEGRA20_DAS_DAP_CTRL_SEL_DAP_CTRL_SEL_P ;
 int TEGRA20_DAS_DAP_CTRL_SEL_DAP_MS_SEL_P ;
 int TEGRA20_DAS_DAP_CTRL_SEL_DAP_SDATA1_TX_RX_P ;
 int TEGRA20_DAS_DAP_CTRL_SEL_DAP_SDATA2_TX_RX_P ;
 int TEGRA20_DAS_DAP_CTRL_SEL_STRIDE ;
 int das ;
 int tegra20_das_write (int,int) ;

int tegra20_das_connect_dap_to_dap(int dap, int otherdap, int master,
       int sdata1rx, int sdata2rx)
{
 u32 addr;
 u32 reg;

 if (!das)
  return -ENODEV;

 addr = TEGRA20_DAS_DAP_CTRL_SEL +
  (dap * TEGRA20_DAS_DAP_CTRL_SEL_STRIDE);
 reg = otherdap << TEGRA20_DAS_DAP_CTRL_SEL_DAP_CTRL_SEL_P |
  !!sdata2rx << TEGRA20_DAS_DAP_CTRL_SEL_DAP_SDATA2_TX_RX_P |
  !!sdata1rx << TEGRA20_DAS_DAP_CTRL_SEL_DAP_SDATA1_TX_RX_P |
  !!master << TEGRA20_DAS_DAP_CTRL_SEL_DAP_MS_SEL_P;

 tegra20_das_write(addr, reg);

 return 0;
}
