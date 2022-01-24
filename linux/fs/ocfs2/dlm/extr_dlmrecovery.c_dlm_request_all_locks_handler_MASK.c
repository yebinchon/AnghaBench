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
typedef  int /*<<< orphan*/  u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct TYPE_5__ {scalar_t__ dead_node; int /*<<< orphan*/  reco_master; } ;
struct TYPE_6__ {TYPE_2__ ral; } ;
struct dlm_work_item {int /*<<< orphan*/  list; TYPE_3__ u; } ;
struct dlm_lock_request {scalar_t__ dead_node; int /*<<< orphan*/  node_idx; } ;
struct TYPE_4__ {scalar_t__ dead_node; } ;
struct dlm_ctxt {int /*<<< orphan*/  dispatched_work; int /*<<< orphan*/  dlm_worker; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  work_list; TYPE_1__ reco; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,struct dlm_work_item*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  dlm_request_all_locks_worker ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_work_item*) ; 
 struct dlm_work_item* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct o2net_msg *msg, u32 len, void *data,
				  void **ret_data)
{
	struct dlm_ctxt *dlm = data;
	struct dlm_lock_request *lr = (struct dlm_lock_request *)msg->buf;
	char *buf = NULL;
	struct dlm_work_item *item = NULL;

	if (!FUNC2(dlm))
		return -EINVAL;

	if (lr->dead_node != dlm->reco.dead_node) {
		FUNC9(ML_ERROR, "%s: node %u sent dead_node=%u, but local "
		     "dead_node is %u\n", dlm->name, lr->node_idx,
		     lr->dead_node, dlm->reco.dead_node);
		FUNC4(dlm);
		/* this is a hack */
		FUNC5(dlm);
		return -ENOMEM;
	}
	FUNC0(lr->dead_node != dlm->reco.dead_node);

	item = FUNC7(sizeof(*item), GFP_NOFS);
	if (!item) {
		FUNC5(dlm);
		return -ENOMEM;
	}

	/* this will get freed by dlm_request_all_locks_worker */
	buf = (char *) FUNC1(GFP_NOFS);
	if (!buf) {
		FUNC6(item);
		FUNC5(dlm);
		return -ENOMEM;
	}

	/* queue up work for dlm_request_all_locks_worker */
	FUNC2(dlm);  /* get an extra ref for the work item */
	FUNC3(dlm, item, dlm_request_all_locks_worker, buf);
	item->u.ral.reco_master = lr->node_idx;
	item->u.ral.dead_node = lr->dead_node;
	FUNC11(&dlm->work_lock);
	FUNC8(&item->list, &dlm->work_list);
	FUNC12(&dlm->work_lock);
	FUNC10(dlm->dlm_worker, &dlm->dispatched_work);

	FUNC5(dlm);
	return 0;
}