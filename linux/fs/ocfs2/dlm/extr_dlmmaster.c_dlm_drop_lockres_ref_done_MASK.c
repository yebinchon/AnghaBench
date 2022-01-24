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
struct TYPE_2__ {char* name; unsigned int len; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_deref_lockres_done {unsigned int namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  node_idx; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  key; int /*<<< orphan*/  node_num; } ;
typedef  int /*<<< orphan*/  deref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DLM_DEREF_LOCKRES_DONE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 unsigned int O2NM_MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_deref_lockres_done*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,char const*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_deref_lockres_done*,int,int,int*) ; 

__attribute__((used)) static void FUNC6(struct dlm_ctxt *dlm,
		struct dlm_lock_resource *res, u8 node)
{
	struct dlm_deref_lockres_done deref;
	int ret = 0, r;
	const char *lockname;
	unsigned int namelen;

	lockname = res->lockname.name;
	namelen = res->lockname.len;
	FUNC0(namelen > O2NM_MAX_NAME_LEN);

	FUNC3(&deref, 0, sizeof(deref));
	deref.node_idx = dlm->node_num;
	deref.namelen = namelen;
	FUNC2(deref.name, lockname, namelen);

	ret = FUNC5(DLM_DEREF_LOCKRES_DONE, dlm->key,
				 &deref, sizeof(deref), node, &r);
	if (ret < 0) {
		FUNC4(ML_ERROR, "%s: res %.*s, error %d send DEREF DONE "
				" to node %u\n", dlm->name, namelen,
				lockname, ret, node);
	} else if (r < 0) {
		/* ignore the error */
		FUNC4(ML_ERROR, "%s: res %.*s, DEREF to node %u got %d\n",
		     dlm->name, namelen, lockname, node, r);
		FUNC1(res);
	}
}