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
struct device {int /*<<< orphan*/  devt; } ;
struct backing_dev_info {struct device* owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct backing_dev_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

int FUNC5(struct backing_dev_info *bdi, struct device *owner)
{
	int rc;

	rc = FUNC3(bdi, "%u:%u", FUNC0(owner->devt), FUNC1(owner->devt));
	if (rc)
		return rc;
	/* Leaking owner reference... */
	FUNC2(bdi->owner);
	bdi->owner = owner;
	FUNC4(owner);
	return 0;
}