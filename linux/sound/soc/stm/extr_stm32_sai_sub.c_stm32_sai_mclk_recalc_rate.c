
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_mclk_data {unsigned long freq; } ;
struct clk_hw {int dummy; } ;


 struct stm32_sai_mclk_data* to_mclk_data (struct clk_hw*) ;

__attribute__((used)) static unsigned long stm32_sai_mclk_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct stm32_sai_mclk_data *mclk = to_mclk_data(hw);

 return mclk->freq;
}
