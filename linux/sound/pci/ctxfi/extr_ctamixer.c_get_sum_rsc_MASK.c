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
struct sum_mgr {int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; TYPE_1__* card; } ;
struct sum_desc {int msr; } ;
struct sum {unsigned int* idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sum*) ; 
 struct sum* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct sum*,struct sum_desc const*,struct sum_mgr*) ; 

__attribute__((used)) static int FUNC8(struct sum_mgr *mgr,
		       const struct sum_desc *desc,
		       struct sum **rsum)
{
	int err, i;
	unsigned int idx;
	struct sum *sum;
	unsigned long flags;

	*rsum = NULL;

	/* Allocate mem for sum resource */
	sum = FUNC2(sizeof(*sum), GFP_KERNEL);
	if (!sum)
		return -ENOMEM;

	/* Check whether there are sufficient sum resources to meet request. */
	err = 0;
	FUNC5(&mgr->mgr_lock, flags);
	for (i = 0; i < desc->msr; i++) {
		err = FUNC3(&mgr->mgr, 1, &idx);
		if (err)
			break;

		sum->idx[i] = idx;
	}
	FUNC6(&mgr->mgr_lock, flags);
	if (err) {
		FUNC0(mgr->card->dev,
			"Can't meet SUM resource request!\n");
		goto error;
	}

	err = FUNC7(sum, desc, mgr);
	if (err)
		goto error;

	*rsum = sum;

	return 0;

error:
	FUNC5(&mgr->mgr_lock, flags);
	for (i--; i >= 0; i--)
		FUNC4(&mgr->mgr, 1, sum->idx[i]);

	FUNC6(&mgr->mgr_lock, flags);
	FUNC1(sum);
	return err;
}