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
struct sum_mgr {int /*<<< orphan*/  card; int /*<<< orphan*/  put_sum; int /*<<< orphan*/  get_sum; int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; } ;
struct hw {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SUM ; 
 int /*<<< orphan*/  SUM_RESOURCE_NUM ; 
 int /*<<< orphan*/  get_sum_rsc ; 
 int /*<<< orphan*/  FUNC0 (struct sum_mgr*) ; 
 struct sum_mgr* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  put_sum_rsc ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct hw *hw, struct sum_mgr **rsum_mgr)
{
	int err;
	struct sum_mgr *sum_mgr;

	*rsum_mgr = NULL;
	sum_mgr = FUNC1(sizeof(*sum_mgr), GFP_KERNEL);
	if (!sum_mgr)
		return -ENOMEM;

	err = FUNC2(&sum_mgr->mgr, SUM, SUM_RESOURCE_NUM, hw);
	if (err)
		goto error;

	FUNC3(&sum_mgr->mgr_lock);

	sum_mgr->get_sum = get_sum_rsc;
	sum_mgr->put_sum = put_sum_rsc;
	sum_mgr->card = hw->card;

	*rsum_mgr = sum_mgr;

	return 0;

error:
	FUNC0(sum_mgr);
	return err;
}