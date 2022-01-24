#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct skl_ssp_clk {TYPE_1__* rate_cfg; } ;
struct skl_clk_pdata {int num_clks; struct skl_ssp_clk* ssp_clks; struct skl_clk_parent_src* parent_clks; } ;
struct skl_clk_parent_src {int dummy; } ;
struct skl_clk_data {size_t avail_clk_cnt; int /*<<< orphan*/  parent; int /*<<< orphan*/ * clk; } ;
struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {scalar_t__ rate; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKL_MAX_CLK_SRC ; 
 struct skl_clk_pdata* FUNC2 (struct device*) ; 
 struct skl_clk_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct skl_clk_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct skl_ssp_clk*,struct skl_clk_pdata*,int) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,struct skl_clk_parent_src*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct skl_clk_data*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device *parent_dev = dev->parent;
	struct skl_clk_parent_src *parent_clks;
	struct skl_clk_pdata *clk_pdata;
	struct skl_clk_data *data;
	struct skl_ssp_clk *clks;
	int ret, i;

	clk_pdata = FUNC2(&pdev->dev);
	parent_clks = clk_pdata->parent_clks;
	clks = clk_pdata->ssp_clks;
	if (!parent_clks || !clks)
		return -EIO;

	data = FUNC3(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* Register Parent clock */
	ret = FUNC6(parent_dev, data->parent, parent_clks);
	if (ret < 0)
		return ret;

	for (i = 0; i < clk_pdata->num_clks; i++) {
		/*
		 * Only register valid clocks
		 * i.e. for which nhlt entry is present.
		 */
		if (clks[i].rate_cfg[0].rate == 0)
			continue;

		data->clk[data->avail_clk_cnt] = FUNC5(dev,
				&clks[i], clk_pdata, i);

		if (FUNC0(data->clk[data->avail_clk_cnt])) {
			ret = FUNC1(data->clk[data->avail_clk_cnt++]);
			goto err_unreg_skl_clk;
		}
	}

	FUNC4(pdev, data);

	return 0;

err_unreg_skl_clk:
	FUNC8(data);
	FUNC7(data->parent, SKL_MAX_CLK_SRC);

	return ret;
}