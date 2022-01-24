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
struct intel_sst_drv {int /*<<< orphan*/  block_lock; int /*<<< orphan*/  pvt_id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int SST_MAX_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct intel_sst_drv *drv)
{
	int local;

	FUNC4(&drv->block_lock);
	/* find first zero index from lsb */
	local = FUNC3(drv->pvt_id);
	FUNC1(drv->dev, "pvt_id assigned --> %d\n", local);
	if (local >= SST_MAX_BLOCKS){
		FUNC5(&drv->block_lock);
		FUNC2(drv->dev, "PVT _ID error: no free id blocks ");
		return -EINVAL;
	}
	/* toggle the index */
	FUNC0(local, &drv->pvt_id);
	FUNC5(&drv->block_lock);
	return local;
}