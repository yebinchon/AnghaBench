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
struct tegra_asoc_utils_data {int set_baseclock; int set_mclk; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_cdev1; int /*<<< orphan*/  clk_pll_a_out0; int /*<<< orphan*/  clk_pll_a; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC4(struct tegra_asoc_utils_data *data)
{
	const int pll_rate = 73728000;
	const int ac97_rate = 24576000;
	int err;

	FUNC0(data->clk_cdev1);
	FUNC0(data->clk_pll_a_out0);
	FUNC0(data->clk_pll_a);

	/*
	 * AC97 rate is fixed at 24.576MHz and is used for both the host
	 * controller and the external codec
	 */
	err = FUNC2(data->clk_pll_a, pll_rate);
	if (err) {
		FUNC3(data->dev, "Can't set pll_a rate: %d\n", err);
		return err;
	}

	err = FUNC2(data->clk_pll_a_out0, ac97_rate);
	if (err) {
		FUNC3(data->dev, "Can't set pll_a_out0 rate: %d\n", err);
		return err;
	}

	/* Don't set cdev1/extern1 rate; it's locked to pll_a_out0 */

	err = FUNC1(data->clk_pll_a);
	if (err) {
		FUNC3(data->dev, "Can't enable pll_a: %d\n", err);
		return err;
	}

	err = FUNC1(data->clk_pll_a_out0);
	if (err) {
		FUNC3(data->dev, "Can't enable pll_a_out0: %d\n", err);
		return err;
	}

	err = FUNC1(data->clk_cdev1);
	if (err) {
		FUNC3(data->dev, "Can't enable cdev1: %d\n", err);
		return err;
	}

	data->set_baseclock = pll_rate;
	data->set_mclk = ac97_rate;

	return 0;
}