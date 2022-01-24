#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct omap_mcbsp {int /*<<< orphan*/  fclk; TYPE_1__* dev; TYPE_2__* pdata; int /*<<< orphan*/  pm_qos_req; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {scalar_t__ buffer_size; TYPE_3__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  additional_attr_group ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 struct omap_mcbsp* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct omap_mcbsp *mcbsp = FUNC2(pdev);

	if (mcbsp->pdata->ops && mcbsp->pdata->ops->free)
		mcbsp->pdata->ops->free(mcbsp->id);

	if (FUNC4(&mcbsp->pm_qos_req))
		FUNC3(&mcbsp->pm_qos_req);

	if (mcbsp->pdata->buffer_size)
		FUNC6(&mcbsp->dev->kobj, &additional_attr_group);

	FUNC1(pdev);

	FUNC0(mcbsp->fclk);

	return 0;
}