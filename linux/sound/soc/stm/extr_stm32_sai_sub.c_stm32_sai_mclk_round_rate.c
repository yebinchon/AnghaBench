
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int dummy; } ;
struct stm32_sai_mclk_data {unsigned long freq; struct stm32_sai_sub_data* sai_data; } ;
struct clk_hw {int dummy; } ;


 int stm32_sai_get_clk_div (struct stm32_sai_sub_data*,unsigned long,unsigned long) ;
 struct stm32_sai_mclk_data* to_mclk_data (struct clk_hw*) ;

__attribute__((used)) static long stm32_sai_mclk_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *prate)
{
 struct stm32_sai_mclk_data *mclk = to_mclk_data(hw);
 struct stm32_sai_sub_data *sai = mclk->sai_data;
 int div;

 div = stm32_sai_get_clk_div(sai, *prate, rate);
 if (div < 0)
  return div;

 mclk->freq = *prate / div;

 return mclk->freq;
}
