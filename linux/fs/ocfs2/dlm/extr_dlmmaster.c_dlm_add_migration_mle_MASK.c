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
typedef  void* u8 ;
struct dlm_master_list_entry {scalar_t__ type; int /*<<< orphan*/  maybe_map; void* master; void* new_master; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  wq; int /*<<< orphan*/  woken; } ;
struct dlm_lock_resource {int dummy; } ;
struct dlm_ctxt {void* node_num; int /*<<< orphan*/  name; int /*<<< orphan*/  master_lock; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int DLM_MIGRATE_RESPONSE_MASTERY_REF ; 
 scalar_t__ DLM_MLE_MASTER ; 
 scalar_t__ DLM_MLE_MIGRATION ; 
 int EEXIST ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct dlm_ctxt*,struct dlm_master_list_entry**,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_master_list_entry*,scalar_t__,struct dlm_ctxt*,struct dlm_lock_resource*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct dlm_ctxt *dlm,
				 struct dlm_lock_resource *res,
				 struct dlm_master_list_entry *mle,
				 struct dlm_master_list_entry **oldmle,
				 const char *name, unsigned int namelen,
				 u8 new_master, u8 master)
{
	int found;
	int ret = 0;

	*oldmle = NULL;

	FUNC4(&dlm->spinlock);
	FUNC4(&dlm->master_lock);

	/* caller is responsible for any ref taken here on oldmle */
	found = FUNC6(dlm, oldmle, (char *)name, namelen);
	if (found) {
		struct dlm_master_list_entry *tmp = *oldmle;
		FUNC10(&tmp->spinlock);
		if (tmp->type == DLM_MLE_MIGRATION) {
			if (master == dlm->node_num) {
				/* ah another process raced me to it */
				FUNC8(0, "tried to migrate %.*s, but some "
				     "process beat me to it\n",
				     namelen, name);
				FUNC11(&tmp->spinlock);
				return -EEXIST;
			} else {
				/* bad.  2 NODES are trying to migrate! */
				FUNC8(ML_ERROR, "migration error  mle: "
				     "master=%u new_master=%u // request: "
				     "master=%u new_master=%u // "
				     "lockres=%.*s\n",
				     tmp->master, tmp->new_master,
				     master, new_master,
				     namelen, name);
				FUNC0();
			}
		} else {
			/* this is essentially what assert_master does */
			tmp->master = master;
			FUNC5(&tmp->woken, 1);
			FUNC12(&tmp->wq);
			/* remove it so that only one mle will be found */
			FUNC3(dlm, tmp);
			FUNC2(dlm, tmp);
			if (tmp->type == DLM_MLE_MASTER) {
				ret = DLM_MIGRATE_RESPONSE_MASTERY_REF;
				FUNC8(0, "%s:%.*s: master=%u, newmaster=%u, "
						"telling master to get ref "
						"for cleared out mle during "
						"migration\n", dlm->name,
						namelen, name, master,
						new_master);
			}
		}
		FUNC11(&tmp->spinlock);
	}

	/* now add a migration mle to the tail of the list */
	FUNC7(mle, DLM_MLE_MIGRATION, dlm, res, name, namelen);
	mle->new_master = new_master;
	/* the new master will be sending an assert master for this.
	 * at that point we will get the refmap reference */
	mle->master = master;
	/* do this for consistency with other mle types */
	FUNC9(new_master, mle->maybe_map);
	FUNC1(dlm, mle);

	return ret;
}