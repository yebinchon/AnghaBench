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
struct TYPE_2__ {char* name; unsigned int len; } ;
struct dlm_lock_resource {int owner; TYPE_1__ lockname; } ;
struct dlm_deref_lockres {unsigned int namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  node_idx; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  key; int /*<<< orphan*/  node_num; } ;
typedef  int /*<<< orphan*/  deref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DLM_DEREF_LOCKRES_MSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ML_ERROR ; 
 unsigned int O2NM_MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_deref_lockres*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,char const*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_deref_lockres*,int,int,int*) ; 

int FUNC7(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
	struct dlm_deref_lockres deref;
	int ret = 0, r;
	const char *lockname;
	unsigned int namelen;

	lockname = res->lockname.name;
	namelen = res->lockname.len;
	FUNC1(namelen > O2NM_MAX_NAME_LEN);

	FUNC4(&deref, 0, sizeof(deref));
	deref.node_idx = dlm->node_num;
	deref.namelen = namelen;
	FUNC3(deref.name, lockname, namelen);

	ret = FUNC6(DLM_DEREF_LOCKRES_MSG, dlm->key,
				 &deref, sizeof(deref), res->owner, &r);
	if (ret < 0)
		FUNC5(ML_ERROR, "%s: res %.*s, error %d send DEREF to node %u\n",
		     dlm->name, namelen, lockname, ret, res->owner);
	else if (r < 0) {
		/* BAD.  other node says I did not have a ref. */
		FUNC5(ML_ERROR, "%s: res %.*s, DEREF to node %u got %d\n",
		     dlm->name, namelen, lockname, res->owner, r);
		FUNC2(res);
		if (r == -ENOMEM)
			FUNC0();
	} else
		ret = r;

	return ret;
}