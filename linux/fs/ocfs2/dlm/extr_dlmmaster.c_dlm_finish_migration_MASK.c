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
typedef  int /*<<< orphan*/  u8 ;
struct dlm_node_iter {int /*<<< orphan*/  node_map; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  state; TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  node_num; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  domain_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_ASSERT_MASTER_FINISH_MIGRATION ; 
 int /*<<< orphan*/  DLM_LOCK_RES_MIGRATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_node_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dlm_node_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
			 u8 old_master)
{
	struct dlm_node_iter iter;
	int ret = 0;

	FUNC11(&dlm->spinlock);
	FUNC5(dlm->domain_map, &iter);
	FUNC0(old_master, iter.node_map);
	FUNC0(dlm->node_num, iter.node_map);
	FUNC12(&dlm->spinlock);

	/* ownership of the lockres is changing.  account for the
	 * mastery reference here since old_master will briefly have
	 * a reference after the migration completes */
	FUNC11(&res->spinlock);
	FUNC4(dlm, res, old_master);
	FUNC12(&res->spinlock);

	FUNC8(0, "now time to do a migrate request to other nodes\n");
	ret = FUNC2(dlm, res, old_master,
				     dlm->node_num, &iter);
	if (ret < 0) {
		FUNC9(ret);
		goto leave;
	}

	FUNC8(0, "doing assert master of %.*s to all except the original node\n",
	     res->lockname.len, res->lockname.name);
	/* this call now finishes out the nodemap
	 * even if one or more nodes die */
	ret = FUNC1(dlm, res, iter.node_map,
				   DLM_ASSERT_MASTER_FINISH_MIGRATION);
	if (ret < 0) {
		/* no longer need to retry.  all living nodes contacted. */
		FUNC9(ret);
		ret = 0;
	}

	FUNC7(iter.node_map, 0, sizeof(iter.node_map));
	FUNC10(old_master, iter.node_map);
	FUNC8(0, "doing assert master of %.*s back to %u\n",
	     res->lockname.len, res->lockname.name, old_master);
	ret = FUNC1(dlm, res, iter.node_map,
				   DLM_ASSERT_MASTER_FINISH_MIGRATION);
	if (ret < 0) {
		FUNC8(0, "assert master to original master failed "
		     "with %d.\n", ret);
		/* the only nonzero status here would be because of
		 * a dead original node.  we're done. */
		ret = 0;
	}

	/* all done, set the owner, clear the flag */
	FUNC11(&res->spinlock);
	FUNC6(dlm, res, dlm->node_num);
	res->state &= ~DLM_LOCK_RES_MIGRATING;
	FUNC12(&res->spinlock);
	/* re-dirty it on the new master */
	FUNC3(dlm, res);
	FUNC13(&res->wq);
leave:
	return ret;
}