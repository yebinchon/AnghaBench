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
struct kvec {int iov_len; struct dlm_proxy_ast* iov_base; } ;
struct dlm_proxy_ast {int type; int blocked_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  cookie; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  node_idx; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {TYPE_2__ lockname; } ;
struct TYPE_6__ {int /*<<< orphan*/  node; int /*<<< orphan*/  cookie; } ;
struct dlm_lock {TYPE_3__ ml; TYPE_1__* lksb; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  key; int /*<<< orphan*/  node_num; } ;
struct TYPE_4__ {struct dlm_proxy_ast* lvb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int DLM_IVLOCKID ; 
 int DLM_LKSB_GET_LVB ; 
 int DLM_LVB_LEN ; 
 int DLM_MIGRATING ; 
 int DLM_NORMAL ; 
 int /*<<< orphan*/  DLM_PROXY_AST_MSG ; 
 int DLM_RECOVERING ; 
 int /*<<< orphan*/  LKM_GET_LVB ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_proxy_ast*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvec*,size_t,int /*<<< orphan*/ ,int*) ; 

int FUNC6(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
			   struct dlm_lock *lock, int msg_type,
			   int blocked_type, int flags)
{
	int ret = 0;
	struct dlm_proxy_ast past;
	struct kvec vec[2];
	size_t veclen = 1;
	int status;

	FUNC4(0, "%s: res %.*s, to %u, type %d, blocked_type %d\n", dlm->name,
	     res->lockname.len, res->lockname.name, lock->ml.node, msg_type,
	     blocked_type);

	FUNC3(&past, 0, sizeof(struct dlm_proxy_ast));
	past.node_idx = dlm->node_num;
	past.type = msg_type;
	past.blocked_type = blocked_type;
	past.namelen = res->lockname.len;
	FUNC2(past.name, res->lockname.name, past.namelen);
	past.cookie = lock->ml.cookie;

	vec[0].iov_len = sizeof(struct dlm_proxy_ast);
	vec[0].iov_base = &past;
	if (flags & DLM_LKSB_GET_LVB) {
		FUNC1(&past.flags, LKM_GET_LVB);
		vec[1].iov_len = DLM_LVB_LEN;
		vec[1].iov_base = lock->lksb->lvb;
		veclen++;
	}

	ret = FUNC5(DLM_PROXY_AST_MSG, dlm->key, vec, veclen,
				     lock->ml.node, &status);
	if (ret < 0)
		FUNC4(ML_ERROR, "%s: res %.*s, error %d send AST to node %u\n",
		     dlm->name, res->lockname.len, res->lockname.name, ret,
		     lock->ml.node);
	else {
		if (status == DLM_RECOVERING) {
			FUNC4(ML_ERROR, "sent AST to node %u, it thinks this "
			     "node is dead!\n", lock->ml.node);
			FUNC0();
		} else if (status == DLM_MIGRATING) {
			FUNC4(ML_ERROR, "sent AST to node %u, it returned "
			     "DLM_MIGRATING!\n", lock->ml.node);
			FUNC0();
		} else if (status != DLM_NORMAL && status != DLM_IVLOCKID) {
			FUNC4(ML_ERROR, "AST to node %u returned %d!\n",
			     lock->ml.node, status);
			/* ignore it */
		}
		ret = 0;
	}
	return ret;
}