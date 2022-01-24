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
struct backing_dev_info {int /*<<< orphan*/ * owner; int /*<<< orphan*/ * dev; int /*<<< orphan*/  wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct backing_dev_info *bdi)
{
	/* make sure nobody finds us on the bdi_list anymore */
	FUNC1(bdi);
	FUNC5(&bdi->wb);
	FUNC2(bdi);

	if (bdi->dev) {
		FUNC0(bdi);
		FUNC3(bdi->dev);
		bdi->dev = NULL;
	}

	if (bdi->owner) {
		FUNC4(bdi->owner);
		bdi->owner = NULL;
	}
}