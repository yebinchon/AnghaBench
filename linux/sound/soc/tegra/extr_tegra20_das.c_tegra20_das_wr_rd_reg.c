
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int DAC_INPUT_DATA_CLK_SEL ;
 int DAP_CTRL_SEL ;
 unsigned int LAST_REG (int ) ;
 unsigned int TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL ;
 unsigned int TEGRA20_DAS_DAP_CTRL_SEL ;

__attribute__((used)) static bool tegra20_das_wr_rd_reg(struct device *dev, unsigned int reg)
{
 if ((reg >= TEGRA20_DAS_DAP_CTRL_SEL) &&
     (reg <= LAST_REG(DAP_CTRL_SEL)))
  return 1;
 if ((reg >= TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL) &&
     (reg <= LAST_REG(DAC_INPUT_DATA_CLK_SEL)))
  return 1;

 return 0;
}
