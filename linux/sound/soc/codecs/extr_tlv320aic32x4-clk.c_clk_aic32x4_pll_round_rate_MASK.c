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
struct clk_hw {int dummy; } ;
struct clk_aic32x4_pll_muldiv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk_aic32x4_pll_muldiv*,unsigned long,unsigned long) ; 
 long FUNC1 (struct clk_aic32x4_pll_muldiv*,unsigned long) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw,
			unsigned long rate,
			unsigned long *parent_rate)
{
	struct clk_aic32x4_pll_muldiv settings;
	int ret;

	ret = FUNC0(&settings, rate, *parent_rate);
	if (ret < 0)
		return 0;

	return FUNC1(&settings, *parent_rate);
}