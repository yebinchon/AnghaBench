#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct skl_ssp_clk {int /*<<< orphan*/  parent_name; int /*<<< orphan*/  name; } ;
struct skl_clk_pdata {int dummy; } ;
struct TYPE_3__ {struct clk_init_data* init; } ;
struct skl_clk {int id; int /*<<< orphan*/  lookup; TYPE_1__ hw; struct skl_clk_pdata* pdata; } ;
struct device {int dummy; } ;
struct clk_init_data {int num_parents; int /*<<< orphan*/  name; int /*<<< orphan*/ * parent_names; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_GATE ; 
 int ENOMEM ; 
 struct skl_clk* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device*,TYPE_1__*) ; 
 struct skl_clk* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skl_clk_ops ; 

__attribute__((used)) static struct skl_clk *FUNC4(struct device *dev,
			struct skl_ssp_clk *clk,
			struct skl_clk_pdata *clk_pdata, int id)
{
	struct clk_init_data init;
	struct skl_clk *clkdev;
	int ret;

	clkdev = FUNC3(dev, sizeof(*clkdev), GFP_KERNEL);
	if (!clkdev)
		return FUNC0(-ENOMEM);

	init.name = clk->name;
	init.ops = &skl_clk_ops;
	init.flags = CLK_SET_RATE_GATE;
	init.parent_names = &clk->parent_name;
	init.num_parents = 1;
	clkdev->hw.init = &init;
	clkdev->pdata = clk_pdata;

	clkdev->id = id;
	ret = FUNC2(dev, &clkdev->hw);
	if (ret) {
		clkdev = FUNC0(ret);
		return clkdev;
	}

	clkdev->lookup = FUNC1(&clkdev->hw, init.name, NULL);
	if (!clkdev->lookup)
		clkdev = FUNC0(-ENOMEM);

	return clkdev;
}