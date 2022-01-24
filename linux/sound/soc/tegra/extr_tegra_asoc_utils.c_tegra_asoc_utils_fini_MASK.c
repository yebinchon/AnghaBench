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
struct tegra_asoc_utils_data {int /*<<< orphan*/  clk_pll_a; int /*<<< orphan*/  clk_pll_a_out0; int /*<<< orphan*/  clk_cdev1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct tegra_asoc_utils_data *data)
{
	FUNC0(data->clk_cdev1);
	FUNC0(data->clk_pll_a_out0);
	FUNC0(data->clk_pll_a);
}