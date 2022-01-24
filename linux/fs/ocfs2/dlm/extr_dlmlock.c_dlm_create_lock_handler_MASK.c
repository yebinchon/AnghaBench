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
struct dlm_lockstatus {int /*<<< orphan*/  flags; } ;
struct dlm_lock_resource {int /*<<< orphan*/  spinlock; } ;
struct dlm_lock {struct dlm_lockstatus* lksb; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; } ;
struct dlm_create_lock {char* name; unsigned int namelen; int /*<<< orphan*/  flags; int /*<<< orphan*/  cookie; int /*<<< orphan*/  node_idx; int /*<<< orphan*/  requested_type; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_IVBUFLEN ; 
 int DLM_IVLOCKID ; 
 int /*<<< orphan*/  DLM_LKSB_GET_LVB ; 
 unsigned int DLM_LOCKID_NAME_MAX ; 
 int DLM_NORMAL ; 
 int DLM_REJECTED ; 
 int DLM_SYSERR ; 
 int LKM_GET_LVB ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int FUNC1 (struct dlm_lock_resource*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_lock*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_lock_resource*) ; 
 struct dlm_lock_resource* FUNC10 (struct dlm_ctxt*,char*,unsigned int) ; 
 struct dlm_lock* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_ctxt*) ; 
 int FUNC13 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct o2net_msg *msg, u32 len, void *data,
			    void **ret_data)
{
	struct dlm_ctxt *dlm = data;
	struct dlm_create_lock *create = (struct dlm_create_lock *)msg->buf;
	struct dlm_lock_resource *res = NULL;
	struct dlm_lock *newlock = NULL;
	struct dlm_lockstatus *lksb = NULL;
	enum dlm_status status = DLM_NORMAL;
	char *name;
	unsigned int namelen;

	FUNC0(!dlm);

	if (!FUNC6(dlm))
		return DLM_REJECTED;

	name = create->name;
	namelen = create->namelen;
	status = DLM_REJECTED;
	if (!FUNC4(dlm)) {
		FUNC14(ML_ERROR, "Domain %s not fully joined, but node %u is "
		     "sending a create_lock message for lock %.*s!\n",
		     dlm->name, create->node_idx, namelen, name);
		FUNC5(status);
		goto leave;
	}

	status = DLM_IVBUFLEN;
	if (namelen > DLM_LOCKID_NAME_MAX) {
		FUNC5(status);
		goto leave;
	}

	status = DLM_SYSERR;
	newlock = FUNC11(create->requested_type,
			       create->node_idx,
			       FUNC3(create->cookie), NULL);
	if (!newlock) {
		FUNC5(status);
		goto leave;
	}

	lksb = newlock->lksb;

	if (FUNC2(create->flags) & LKM_GET_LVB) {
		lksb->flags |= DLM_LKSB_GET_LVB;
		FUNC14(0, "set DLM_LKSB_GET_LVB flag\n");
	}

	status = DLM_IVLOCKID;
	res = FUNC10(dlm, name, namelen);
	if (!res) {
		FUNC5(status);
		goto leave;
	}

	FUNC15(&res->spinlock);
	status = FUNC1(res);
	FUNC16(&res->spinlock);

	if (status != DLM_NORMAL) {
		FUNC14(0, "lockres recovering/migrating/in-progress\n");
		goto leave;
	}

	FUNC7(newlock, res);

	status = FUNC13(dlm, res, newlock, FUNC2(create->flags));
leave:
	if (status != DLM_NORMAL)
		if (newlock)
			FUNC8(newlock);

	if (res)
		FUNC9(res);

	FUNC12(dlm);

	return status;
}