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
struct dlm_node_iter {int /*<<< orphan*/  node_map; } ;
struct dlm_migrate_request {int new_master; int master; int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int /*<<< orphan*/  spinlock; TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  key; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  domain_map; } ;
typedef  int /*<<< orphan*/  migrate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DLM_MIGRATE_REQUEST_MSG ; 
 int DLM_MIGRATE_RESPONSE_MASTERY_REF ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,struct dlm_lock_resource*,int) ; 
 int FUNC4 (struct dlm_node_iter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_migrate_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_migrate_request*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct dlm_ctxt *dlm,
				  struct dlm_lock_resource *res,
				  u8 master, u8 new_master,
				  struct dlm_node_iter *iter)
{
	struct dlm_migrate_request migrate;
	int ret, skip, status = 0;
	int nodenum;

	FUNC6(&migrate, 0, sizeof(migrate));
	migrate.namelen = res->lockname.len;
	FUNC5(migrate.name, res->lockname.name, migrate.namelen);
	migrate.new_master = new_master;
	migrate.master = master;

	ret = 0;

	/* send message to all nodes, except the master and myself */
	while ((nodenum = FUNC4(iter)) >= 0) {
		if (nodenum == master ||
		    nodenum == new_master)
			continue;

		/* We could race exit domain. If exited, skip. */
		FUNC10(&dlm->spinlock);
		skip = (!FUNC12(nodenum, dlm->domain_map));
		FUNC11(&dlm->spinlock);
		if (skip) {
			FUNC1(nodenum, iter->node_map);
			continue;
		}

		ret = FUNC9(DLM_MIGRATE_REQUEST_MSG, dlm->key,
					 &migrate, sizeof(migrate), nodenum,
					 &status);
		if (ret < 0) {
			FUNC7(ML_ERROR, "%s: res %.*s, Error %d send "
			     "MIGRATE_REQUEST to node %u\n", dlm->name,
			     migrate.namelen, migrate.name, ret, nodenum);
			if (!FUNC2(ret)) {
				FUNC7(ML_ERROR, "unhandled error=%d!\n", ret);
				FUNC0();
			}
			FUNC1(nodenum, iter->node_map);
			ret = 0;
		} else if (status < 0) {
			FUNC7(0, "migrate request (node %u) returned %d!\n",
			     nodenum, status);
			ret = status;
		} else if (status == DLM_MIGRATE_RESPONSE_MASTERY_REF) {
			/* during the migration request we short-circuited
			 * the mastery of the lockres.  make sure we have
			 * a mastery ref for nodenum */
			FUNC7(0, "%s:%.*s: need ref for node %u\n",
			     dlm->name, res->lockname.len, res->lockname.name,
			     nodenum);
			FUNC10(&res->spinlock);
			FUNC3(dlm, res, nodenum);
			FUNC11(&res->spinlock);
		}
	}

	if (ret < 0)
		FUNC8(ret);

	FUNC7(0, "returning ret=%d\n", ret);
	return ret;
}