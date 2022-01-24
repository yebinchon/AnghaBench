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
struct skl_dev {int /*<<< orphan*/  clk_dev; TYPE_1__* pci; } ;
struct skl_clk_pdata {struct skl_dev* pvt_data; int /*<<< orphan*/  ssp_clks; int /*<<< orphan*/  num_clks; int /*<<< orphan*/  parent_clks; } ;
struct platform_device_info {int id; char* name; int size_data; struct skl_clk_pdata* data; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct skl_clk_pdata* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device_info*) ; 
 int /*<<< orphan*/  skl_clk_src ; 
 int /*<<< orphan*/  FUNC5 (struct skl_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skl_ssp_clks ; 

__attribute__((used)) static int FUNC6(struct skl_dev *skl)
{
	struct platform_device_info pdevinfo = {NULL};
	struct skl_clk_pdata *clk_pdata;

	clk_pdata = FUNC2(&skl->pci->dev, sizeof(*clk_pdata),
							GFP_KERNEL);
	if (!clk_pdata)
		return -ENOMEM;

	FUNC3(skl->pci->device);

	clk_pdata->parent_clks = skl_clk_src;
	clk_pdata->ssp_clks = skl_ssp_clks;
	clk_pdata->num_clks = FUNC0(skl_ssp_clks);

	/* Query NHLT to fill the rates and parent */
	FUNC5(skl, clk_pdata->ssp_clks);
	clk_pdata->pvt_data = skl;

	/* Register Platform device */
	pdevinfo.parent = &skl->pci->dev;
	pdevinfo.id = -1;
	pdevinfo.name = "skl-ssp-clk";
	pdevinfo.data = clk_pdata;
	pdevinfo.size_data = sizeof(*clk_pdata);
	skl->clk_dev = FUNC4(&pdevinfo);
	return FUNC1(skl->clk_dev);
}