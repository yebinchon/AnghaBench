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
struct skl_clk {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct skl_clk*,int) ; 
 struct skl_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct skl_clk *clkdev = FUNC1(hw);

	return FUNC0(clkdev, true);
}