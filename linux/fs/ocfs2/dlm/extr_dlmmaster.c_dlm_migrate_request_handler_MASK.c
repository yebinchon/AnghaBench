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
struct dlm_migrate_request {char* name; unsigned int namelen; int /*<<< orphan*/  master; int /*<<< orphan*/  new_master; } ;
struct dlm_master_list_entry {int dummy; } ;
struct dlm_lock_resource {int state; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  master_lock; } ;

/* Variables and functions */
 int DLM_LOCK_RES_MIGRATING ; 
 int DLM_LOCK_RES_RECOVERING ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 struct dlm_lock_resource* FUNC0 (struct dlm_ctxt*,char const*,unsigned int,unsigned int) ; 
 int FUNC1 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_master_list_entry*,struct dlm_master_list_entry**,char const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*) ; 
 unsigned int FUNC3 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  dlm_mle_cache ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_master_list_entry*) ; 
 struct dlm_master_list_entry* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct o2net_msg *msg, u32 len, void *data,
				void **ret_data)
{
	struct dlm_ctxt *dlm = data;
	struct dlm_lock_resource *res = NULL;
	struct dlm_migrate_request *migrate = (struct dlm_migrate_request *) msg->buf;
	struct dlm_master_list_entry *mle = NULL, *oldmle = NULL;
	const char *name;
	unsigned int namelen, hash;
	int ret = 0;

	if (!FUNC2(dlm))
		return 0;

	name = migrate->name;
	namelen = migrate->namelen;
	hash = FUNC3(name, namelen);

	/* preallocate.. if this fails, abort */
	mle = FUNC8(dlm_mle_cache, GFP_NOFS);

	if (!mle) {
		ret = -ENOMEM;
		goto leave;
	}

	/* check for pre-existing lock */
	FUNC11(&dlm->spinlock);
	res = FUNC0(dlm, name, namelen, hash);
	if (res) {
		FUNC11(&res->spinlock);
		if (res->state & DLM_LOCK_RES_RECOVERING) {
			/* if all is working ok, this can only mean that we got
		 	* a migrate request from a node that we now see as
		 	* dead.  what can we do here?  drop it to the floor? */
			FUNC12(&res->spinlock);
			FUNC10(ML_ERROR, "Got a migrate request, but the "
			     "lockres is marked as recovering!");
			FUNC9(dlm_mle_cache, mle);
			ret = -EINVAL; /* need a better solution */
			goto unlock;
		}
		res->state |= DLM_LOCK_RES_MIGRATING;
		FUNC12(&res->spinlock);
	}

	FUNC11(&dlm->master_lock);
	/* ignore status.  only nonzero status would BUG. */
	ret = FUNC1(dlm, res, mle, &oldmle,
				    name, namelen,
				    migrate->new_master,
				    migrate->master);

	if (ret < 0)
		FUNC9(dlm_mle_cache, mle);

	FUNC12(&dlm->master_lock);
unlock:
	FUNC12(&dlm->spinlock);

	if (oldmle) {
		/* master is known, detach if not already detached */
		FUNC5(dlm, oldmle);
		FUNC7(oldmle);
	}

	if (res)
		FUNC4(res);
leave:
	FUNC6(dlm);
	return ret;
}