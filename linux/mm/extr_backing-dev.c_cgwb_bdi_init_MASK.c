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
struct backing_dev_info {TYPE_1__* wb_congested; int /*<<< orphan*/  wb; } ;
struct TYPE_3__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct backing_dev_info*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct backing_dev_info *bdi)
{
	int err;

	bdi->wb_congested = FUNC0(sizeof(*bdi->wb_congested), GFP_KERNEL);
	if (!bdi->wb_congested)
		return -ENOMEM;

	FUNC1(&bdi->wb_congested->refcnt, 1);

	err = FUNC3(&bdi->wb, bdi, 1, GFP_KERNEL);
	if (err) {
		FUNC2(bdi->wb_congested);
		return err;
	}
	return 0;
}