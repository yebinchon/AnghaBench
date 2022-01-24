#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stm32_sai_sub_data {int dummy; } ;
struct stm32_sai_mclk_data {unsigned long freq; struct stm32_sai_sub_data* sai_data; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct stm32_sai_sub_data*,unsigned long,unsigned long) ; 
 int FUNC1 (struct stm32_sai_sub_data*,int) ; 
 struct stm32_sai_mclk_data* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
				   unsigned long parent_rate)
{
	struct stm32_sai_mclk_data *mclk = FUNC2(hw);
	struct stm32_sai_sub_data *sai = mclk->sai_data;
	int div, ret;

	div = FUNC0(sai, parent_rate, rate);
	if (div < 0)
		return div;

	ret = FUNC1(sai, div);
	if (ret)
		return ret;

	mclk->freq = rate;

	return 0;
}