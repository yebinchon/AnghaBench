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
typedef  int /*<<< orphan*/  u8 ;
struct dlm_node_iter {int dummy; } ;
struct dlm_lock_resource {int dummy; } ;
struct dlm_ctxt {int node_num; int /*<<< orphan*/  name; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  recovery_map; int /*<<< orphan*/  domain_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int EAGAIN ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 int FUNC1 (struct dlm_ctxt*,struct dlm_lock_resource*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dlm_node_iter*) ; 
 int FUNC4 (struct dlm_node_iter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dlm_ctxt *dlm,
				       struct dlm_lock_resource *res)
{
	struct dlm_node_iter iter;
	int nodenum;
	int ret = 0;
	u8 master = DLM_LOCK_RES_OWNER_UNKNOWN;

	FUNC7(&dlm->spinlock);
	FUNC3(dlm->domain_map, &iter);
	FUNC8(&dlm->spinlock);

	while ((nodenum = FUNC4(&iter)) >= 0) {
		/* do not send to self */
		if (nodenum == dlm->node_num)
			continue;
		ret = FUNC1(dlm, res, nodenum, &master);
		if (ret < 0) {
			FUNC6(ret);
			if (!FUNC2(ret))
				FUNC0();
			/* host is down, so answer for that node would be
			 * DLM_LOCK_RES_OWNER_UNKNOWN.  continue. */
			ret = 0;
		}

		if (master != DLM_LOCK_RES_OWNER_UNKNOWN) {
			/* check to see if this master is in the recovery map */
			FUNC7(&dlm->spinlock);
			if (FUNC9(master, dlm->recovery_map)) {
				FUNC5(ML_NOTICE, "%s: node %u has not seen "
				     "node %u go down yet, and thinks the "
				     "dead node is mastering the recovery "
				     "lock.  must wait.\n", dlm->name,
				     nodenum, master);
				ret = -EAGAIN;
			}
			FUNC8(&dlm->spinlock);
			FUNC5(0, "%s: reco lock master is %u\n", dlm->name,
			     master);
			break;
		}
	}
	return ret;
}