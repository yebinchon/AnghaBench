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
struct clk_aic32x4 {int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int AIC32X4_DIV_MASK ; 
 unsigned long FUNC0 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_aic32x4* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						unsigned long parent_rate)
{
	struct clk_aic32x4 *div = FUNC2(hw);

	unsigned int val;

	FUNC1(div->regmap, div->reg, &val);

	return FUNC0(parent_rate, val & AIC32X4_DIV_MASK);
}