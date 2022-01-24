#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct omap_mcbsp_st_data {int /*<<< orphan*/  io_base_st; int /*<<< orphan*/ * mcbsp_iclk; } ;
struct omap_mcbsp {struct omap_mcbsp_st_data* st_data; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_mcbsp_st_data* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct omap_mcbsp* FUNC5 (struct platform_device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  sidetone_attr_group ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(struct platform_device *pdev)
{
	struct omap_mcbsp *mcbsp = FUNC5(pdev);
	struct omap_mcbsp_st_data *st_data;
	struct resource *res;
	int ret;

	res = FUNC6(pdev, IORESOURCE_MEM, "sidetone");
	if (!res)
		return 0;

	st_data = FUNC4(mcbsp->dev, sizeof(*mcbsp->st_data), GFP_KERNEL);
	if (!st_data)
		return -ENOMEM;

	st_data->mcbsp_iclk = FUNC1(mcbsp->dev, "ick");
	if (FUNC0(st_data->mcbsp_iclk)) {
		FUNC2(mcbsp->dev,
			 "Failed to get ick, sidetone might be broken\n");
		st_data->mcbsp_iclk = NULL;
	}

	st_data->io_base_st = FUNC3(mcbsp->dev, res->start,
					   FUNC7(res));
	if (!st_data->io_base_st)
		return -ENOMEM;

	ret = FUNC8(&mcbsp->dev->kobj, &sidetone_attr_group);
	if (ret)
		return ret;

	mcbsp->st_data = st_data;

	return 0;
}