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
struct clk_aic32x4 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int AIC32X4_PLLEN ; 
 int /*<<< orphan*/  AIC32X4_PLLPR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_aic32x4* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct clk_aic32x4 *pll = FUNC1(hw);

	unsigned int val;
	int ret;

	ret = FUNC0(pll->regmap, AIC32X4_PLLPR, &val);
	if (ret < 0)
		return ret;

	return !!(val & AIC32X4_PLLEN);
}