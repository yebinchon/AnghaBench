#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct omap_mcbsp {TYPE_2__* st_data; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mcbsp_iclk; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_mcbsp* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  sidetone_attr_group ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct platform_device *pdev)
{
	struct omap_mcbsp *mcbsp = FUNC1(pdev);

	if (mcbsp->st_data) {
		FUNC2(&mcbsp->dev->kobj, &sidetone_attr_group);
		FUNC0(mcbsp->st_data->mcbsp_iclk);
	}
}