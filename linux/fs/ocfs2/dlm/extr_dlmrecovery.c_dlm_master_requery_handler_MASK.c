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
typedef  int /*<<< orphan*/  u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_master_requery {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct dlm_lock_resource {int owner; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int node_num; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_ASSERT_MASTER_REQUERY ; 
 int DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 struct dlm_lock_resource* FUNC1 (struct dlm_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct o2net_msg *msg, u32 len, void *data,
			       void **ret_data)
{
	struct dlm_ctxt *dlm = data;
	struct dlm_master_requery *req = (struct dlm_master_requery *)msg->buf;
	struct dlm_lock_resource *res = NULL;
	unsigned int hash;
	int master = DLM_LOCK_RES_OWNER_UNKNOWN;
	u32 flags = DLM_ASSERT_MASTER_REQUERY;
	int dispatched = 0;

	if (!FUNC3(dlm)) {
		/* since the domain has gone away on this
		 * node, the proper response is UNKNOWN */
		return master;
	}

	hash = FUNC4(req->name, req->namelen);

	FUNC8(&dlm->spinlock);
	res = FUNC1(dlm, req->name, req->namelen, hash);
	if (res) {
		FUNC8(&res->spinlock);
		master = res->owner;
		if (master == dlm->node_num) {
			int ret = FUNC2(dlm, res,
							     0, 0, flags);
			if (ret < 0) {
				FUNC7(ret);
				FUNC9(&res->spinlock);
				FUNC5(res);
				FUNC9(&dlm->spinlock);
				FUNC6(dlm);
				/* sender will take care of this and retry */
				return ret;
			} else {
				dispatched = 1;
				FUNC0(dlm, res);
				FUNC9(&res->spinlock);
			}
		} else {
			/* put.. incase we are not the master */
			FUNC9(&res->spinlock);
			FUNC5(res);
		}
	}
	FUNC9(&dlm->spinlock);

	if (!dispatched)
		FUNC6(dlm);
	return master;
}