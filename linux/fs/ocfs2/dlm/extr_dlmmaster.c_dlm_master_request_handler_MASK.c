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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_master_request {char* name; unsigned int namelen; int /*<<< orphan*/  node_idx; } ;
struct dlm_master_list_entry {scalar_t__ type; scalar_t__ master; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  maybe_map; int /*<<< orphan*/  new_master; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int state; scalar_t__ owner; int /*<<< orphan*/  spinlock; TYPE_1__ lockname; int /*<<< orphan*/  hash_node; } ;
struct dlm_ctxt {scalar_t__ node_num; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  master_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DLM_ASSERT_MASTER_MLE_CLEANUP ; 
 int DLM_IVBUFLEN ; 
 unsigned int DLM_LOCKID_NAME_MAX ; 
 int DLM_LOCK_RES_IN_PROGRESS ; 
 int DLM_LOCK_RES_MIGRATING ; 
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int DLM_LOCK_RES_RECOVERING ; 
 int DLM_MASTER_RESP_ERROR ; 
 int DLM_MASTER_RESP_MAYBE ; 
 int DLM_MASTER_RESP_NO ; 
 int DLM_MASTER_RESP_YES ; 
 scalar_t__ DLM_MLE_BLOCK ; 
 scalar_t__ DLM_MLE_MIGRATION ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 struct dlm_lock_resource* FUNC3 (struct dlm_ctxt*,char*,unsigned int,unsigned int) ; 
 int FUNC4 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*) ; 
 int FUNC6 (struct dlm_ctxt*,struct dlm_master_list_entry**,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_master_list_entry*,scalar_t__,struct dlm_ctxt*,int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned int FUNC9 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dlm_mle_cache ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_master_list_entry*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 struct dlm_master_list_entry* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct o2net_msg *msg, u32 len, void *data,
			       void **ret_data)
{
	u8 response = DLM_MASTER_RESP_MAYBE;
	struct dlm_ctxt *dlm = data;
	struct dlm_lock_resource *res = NULL;
	struct dlm_master_request *request = (struct dlm_master_request *) msg->buf;
	struct dlm_master_list_entry *mle = NULL, *tmpmle = NULL;
	char *name;
	unsigned int namelen, hash;
	int found, ret;
	int set_maybe;
	int dispatch_assert = 0;
	int dispatched = 0;

	if (!FUNC7(dlm))
		return DLM_MASTER_RESP_NO;

	if (!FUNC5(dlm)) {
		response = DLM_MASTER_RESP_NO;
		goto send_response;
	}

	name = request->name;
	namelen = request->namelen;
	hash = FUNC9(name, namelen);

	if (namelen > DLM_LOCKID_NAME_MAX) {
		response = DLM_IVBUFLEN;
		goto send_response;
	}

way_up_top:
	FUNC20(&dlm->spinlock);
	res = FUNC3(dlm, name, namelen, hash);
	if (res) {
		FUNC21(&dlm->spinlock);

		/* take care of the easy cases up front */
		FUNC20(&res->spinlock);

		/*
		 * Right after dlm spinlock was released, dlm_thread could have
		 * purged the lockres. Check if lockres got unhashed. If so
		 * start over.
		 */
		if (FUNC14(&res->hash_node)) {
			FUNC21(&res->spinlock);
			FUNC10(res);
			goto way_up_top;
		}

		if (res->state & (DLM_LOCK_RES_RECOVERING|
				  DLM_LOCK_RES_MIGRATING)) {
			FUNC21(&res->spinlock);
			FUNC17(0, "returning DLM_MASTER_RESP_ERROR since res is "
			     "being recovered/migrated\n");
			response = DLM_MASTER_RESP_ERROR;
			if (mle)
				FUNC16(dlm_mle_cache, mle);
			goto send_response;
		}

		if (res->owner == dlm->node_num) {
			FUNC11(dlm, res, request->node_idx);
			FUNC21(&res->spinlock);
			response = DLM_MASTER_RESP_YES;
			if (mle)
				FUNC16(dlm_mle_cache, mle);

			/* this node is the owner.
			 * there is some extra work that needs to
			 * happen now.  the requesting node has
			 * caused all nodes up to this one to
			 * create mles.  this node now needs to
			 * go back and clean those up. */
			dispatch_assert = 1;
			goto send_response;
		} else if (res->owner != DLM_LOCK_RES_OWNER_UNKNOWN) {
			FUNC21(&res->spinlock);
			// mlog(0, "node %u is the master\n", res->owner);
			response = DLM_MASTER_RESP_NO;
			if (mle)
				FUNC16(dlm_mle_cache, mle);
			goto send_response;
		}

		/* ok, there is no owner.  either this node is
		 * being blocked, or it is actively trying to
		 * master this lock. */
		if (!(res->state & DLM_LOCK_RES_IN_PROGRESS)) {
			FUNC17(ML_ERROR, "lock with no owner should be "
			     "in-progress!\n");
			FUNC0();
		}

		// mlog(0, "lockres is in progress...\n");
		FUNC20(&dlm->master_lock);
		found = FUNC6(dlm, &tmpmle, name, namelen);
		if (!found) {
			FUNC17(ML_ERROR, "no mle found for this lock!\n");
			FUNC0();
		}
		set_maybe = 1;
		FUNC20(&tmpmle->spinlock);
		if (tmpmle->type == DLM_MLE_BLOCK) {
			// mlog(0, "this node is waiting for "
			// "lockres to be mastered\n");
			response = DLM_MASTER_RESP_NO;
		} else if (tmpmle->type == DLM_MLE_MIGRATION) {
			FUNC17(0, "node %u is master, but trying to migrate to "
			     "node %u.\n", tmpmle->master, tmpmle->new_master);
			if (tmpmle->master == dlm->node_num) {
				FUNC17(ML_ERROR, "no owner on lockres, but this "
				     "node is trying to migrate it to %u?!\n",
				     tmpmle->new_master);
				FUNC0();
			} else {
				/* the real master can respond on its own */
				response = DLM_MASTER_RESP_NO;
			}
		} else if (tmpmle->master != DLM_LOCK_RES_OWNER_UNKNOWN) {
			set_maybe = 0;
			if (tmpmle->master == dlm->node_num) {
				response = DLM_MASTER_RESP_YES;
				/* this node will be the owner.
				 * go back and clean the mles on any
				 * other nodes */
				dispatch_assert = 1;
				FUNC11(dlm, res,
							   request->node_idx);
			} else
				response = DLM_MASTER_RESP_NO;
		} else {
			// mlog(0, "this node is attempting to "
			// "master lockres\n");
			response = DLM_MASTER_RESP_MAYBE;
		}
		if (set_maybe)
			FUNC19(request->node_idx, tmpmle->maybe_map);
		FUNC21(&tmpmle->spinlock);

		FUNC21(&dlm->master_lock);
		FUNC21(&res->spinlock);

		/* keep the mle attached to heartbeat events */
		FUNC13(tmpmle);
		if (mle)
			FUNC16(dlm_mle_cache, mle);
		goto send_response;
	}

	/*
	 * lockres doesn't exist on this node
	 * if there is an MLE_BLOCK, return NO
	 * if there is an MLE_MASTER, return MAYBE
	 * otherwise, add an MLE_BLOCK, return NO
	 */
	FUNC20(&dlm->master_lock);
	found = FUNC6(dlm, &tmpmle, name, namelen);
	if (!found) {
		/* this lockid has never been seen on this node yet */
		// mlog(0, "no mle found\n");
		if (!mle) {
			FUNC21(&dlm->master_lock);
			FUNC21(&dlm->spinlock);

			mle = FUNC15(dlm_mle_cache, GFP_NOFS);
			if (!mle) {
				response = DLM_MASTER_RESP_ERROR;
				FUNC18(-ENOMEM);
				goto send_response;
			}
			goto way_up_top;
		}

		// mlog(0, "this is second time thru, already allocated, "
		// "add the block.\n");
		FUNC8(mle, DLM_MLE_BLOCK, dlm, NULL, name, namelen);
		FUNC19(request->node_idx, mle->maybe_map);
		FUNC1(dlm, mle);
		response = DLM_MASTER_RESP_NO;
	} else {
		FUNC20(&tmpmle->spinlock);
		if (tmpmle->master == dlm->node_num) {
			FUNC17(ML_ERROR, "no lockres, but an mle with this node as master!\n");
			FUNC0();
		}
		if (tmpmle->type == DLM_MLE_BLOCK)
			response = DLM_MASTER_RESP_NO;
		else if (tmpmle->type == DLM_MLE_MIGRATION) {
			FUNC17(0, "migration mle was found (%u->%u)\n",
			     tmpmle->master, tmpmle->new_master);
			/* real master can respond on its own */
			response = DLM_MASTER_RESP_NO;
		} else
			response = DLM_MASTER_RESP_MAYBE;
		FUNC19(request->node_idx, tmpmle->maybe_map);
		FUNC21(&tmpmle->spinlock);
	}
	FUNC21(&dlm->master_lock);
	FUNC21(&dlm->spinlock);

	if (found) {
		/* keep the mle attached to heartbeat events */
		FUNC13(tmpmle);
	}
send_response:
	/*
	 * __dlm_lookup_lockres() grabbed a reference to this lockres.
	 * The reference is released by dlm_assert_master_worker() under
	 * the call to dlm_dispatch_assert_master().  If
	 * dlm_assert_master_worker() isn't called, we drop it here.
	 */
	if (dispatch_assert) {
		FUNC17(0, "%u is the owner of %.*s, cleaning everyone else\n",
			     dlm->node_num, res->lockname.len, res->lockname.name);
		FUNC20(&res->spinlock);
		ret = FUNC4(dlm, res, 0, request->node_idx,
						 DLM_ASSERT_MASTER_MLE_CLEANUP);
		if (ret < 0) {
			FUNC17(ML_ERROR, "failed to dispatch assert master work\n");
			response = DLM_MASTER_RESP_ERROR;
			FUNC21(&res->spinlock);
			FUNC10(res);
		} else {
			dispatched = 1;
			FUNC2(dlm, res);
			FUNC21(&res->spinlock);
		}
	} else {
		if (res)
			FUNC10(res);
	}

	if (!dispatched)
		FUNC12(dlm);
	return response;
}