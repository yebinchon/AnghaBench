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
struct tegra_asoc_utils_data {void* clk_pll_a; void* clk_pll_a_out0; void* clk_cdev1; struct device* dev; int /*<<< orphan*/  soc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  TEGRA_ASOC_UTILS_SOC_TEGRA114 ; 
 int /*<<< orphan*/  TEGRA_ASOC_UTILS_SOC_TEGRA124 ; 
 int /*<<< orphan*/  TEGRA_ASOC_UTILS_SOC_TEGRA20 ; 
 int /*<<< orphan*/  TEGRA_ASOC_UTILS_SOC_TEGRA30 ; 
 void* FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (struct tegra_asoc_utils_data*,int,int) ; 

int FUNC7(struct tegra_asoc_utils_data *data,
			  struct device *dev)
{
	int ret;

	data->dev = dev;

	if (FUNC5("nvidia,tegra20"))
		data->soc = TEGRA_ASOC_UTILS_SOC_TEGRA20;
	else if (FUNC5("nvidia,tegra30"))
		data->soc = TEGRA_ASOC_UTILS_SOC_TEGRA30;
	else if (FUNC5("nvidia,tegra114"))
		data->soc = TEGRA_ASOC_UTILS_SOC_TEGRA114;
	else if (FUNC5("nvidia,tegra124"))
		data->soc = TEGRA_ASOC_UTILS_SOC_TEGRA124;
	else {
		FUNC4(data->dev, "SoC unknown to Tegra ASoC utils\n");
		return -EINVAL;
	}

	data->clk_pll_a = FUNC2(dev, "pll_a");
	if (FUNC0(data->clk_pll_a)) {
		FUNC4(data->dev, "Can't retrieve clk pll_a\n");
		ret = FUNC1(data->clk_pll_a);
		goto err;
	}

	data->clk_pll_a_out0 = FUNC2(dev, "pll_a_out0");
	if (FUNC0(data->clk_pll_a_out0)) {
		FUNC4(data->dev, "Can't retrieve clk pll_a_out0\n");
		ret = FUNC1(data->clk_pll_a_out0);
		goto err_put_pll_a;
	}

	data->clk_cdev1 = FUNC2(dev, "mclk");
	if (FUNC0(data->clk_cdev1)) {
		FUNC4(data->dev, "Can't retrieve clk cdev1\n");
		ret = FUNC1(data->clk_cdev1);
		goto err_put_pll_a_out0;
	}

	ret = FUNC6(data, 44100, 256 * 44100);
	if (ret)
		goto err_put_cdev1;

	return 0;

err_put_cdev1:
	FUNC3(data->clk_cdev1);
err_put_pll_a_out0:
	FUNC3(data->clk_pll_a_out0);
err_put_pll_a:
	FUNC3(data->clk_pll_a);
err:
	return ret;
}