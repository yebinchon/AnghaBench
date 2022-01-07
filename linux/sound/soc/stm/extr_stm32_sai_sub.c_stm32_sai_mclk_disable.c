
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_sai_sub_data {int regmap; TYPE_1__* pdev; } ;
struct stm32_sai_mclk_data {struct stm32_sai_sub_data* sai_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int SAI_XCR1_MCKEN ;
 int STM_SAI_CR1_REGX ;
 int dev_dbg (int *,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct stm32_sai_mclk_data* to_mclk_data (struct clk_hw*) ;

__attribute__((used)) static void stm32_sai_mclk_disable(struct clk_hw *hw)
{
 struct stm32_sai_mclk_data *mclk = to_mclk_data(hw);
 struct stm32_sai_sub_data *sai = mclk->sai_data;

 dev_dbg(&sai->pdev->dev, "Disable master clock\n");

 regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, SAI_XCR1_MCKEN, 0);
}
