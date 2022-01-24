#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pmu {TYPE_1__* dev; scalar_t__ attr_update; scalar_t__ nr_addr_filters; int /*<<< orphan*/  name; int /*<<< orphan*/  attr_groups; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; int /*<<< orphan*/  groups; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_nr_addr_filters ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct pmu*) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmu_bus ; 
 int /*<<< orphan*/  pmu_dev_release ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct pmu *pmu)
{
	int ret = -ENOMEM;

	pmu->dev = FUNC6(sizeof(struct device), GFP_KERNEL);
	if (!pmu->dev)
		goto out;

	pmu->dev->groups = pmu->attr_groups;
	FUNC5(pmu->dev);
	ret = FUNC1(pmu->dev, "%s", pmu->name);
	if (ret)
		goto free_dev;

	FUNC0(pmu->dev, pmu);
	pmu->dev->bus = &pmu_bus;
	pmu->dev->release = pmu_dev_release;
	ret = FUNC2(pmu->dev);
	if (ret)
		goto free_dev;

	/* For PMUs with address filters, throw in an extra attribute: */
	if (pmu->nr_addr_filters)
		ret = FUNC3(pmu->dev, &dev_attr_nr_addr_filters);

	if (ret)
		goto del_dev;

	if (pmu->attr_update)
		ret = FUNC8(&pmu->dev->kobj, pmu->attr_update);

	if (ret)
		goto del_dev;

out:
	return ret;

del_dev:
	FUNC4(pmu->dev);

free_dev:
	FUNC7(pmu->dev);
	goto out;
}