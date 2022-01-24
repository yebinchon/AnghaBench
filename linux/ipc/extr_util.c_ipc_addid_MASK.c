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
struct kern_ipc_perm {int deleted; scalar_t__ key; int /*<<< orphan*/  lock; int /*<<< orphan*/  khtnode; int /*<<< orphan*/  cgid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  cuid; int /*<<< orphan*/  refcount; } ;
struct ipc_ids {int in_use; int max_idx; int /*<<< orphan*/  ipcs_idr; int /*<<< orphan*/  key_ht; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IPC_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct ipc_ids*,struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  ipc_kht_params ; 
 int ipc_mni ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct ipc_ids *ids, struct kern_ipc_perm *new, int limit)
{
	kuid_t euid;
	kgid_t egid;
	int idx, err;

	/* 1) Initialize the refcount so that ipc_rcu_putref works */
	FUNC7(&new->refcount, 1);

	if (limit > ipc_mni)
		limit = ipc_mni;

	if (ids->in_use >= limit)
		return -ENOSPC;

	FUNC1(GFP_KERNEL);

	FUNC10(&new->lock);
	FUNC5();
	FUNC9(&new->lock);

	FUNC0(&euid, &egid);
	new->cuid = new->uid = euid;
	new->gid = new->cgid = egid;

	new->deleted = false;

	idx = FUNC4(ids, new);
	FUNC2();

	if (idx >= 0 && new->key != IPC_PRIVATE) {
		err = FUNC8(&ids->key_ht, &new->khtnode,
					     ipc_kht_params);
		if (err < 0) {
			FUNC3(&ids->ipcs_idr, idx);
			idx = err;
		}
	}
	if (idx < 0) {
		new->deleted = true;
		FUNC11(&new->lock);
		FUNC6();
		return idx;
	}

	ids->in_use++;
	if (idx > ids->max_idx)
		ids->max_idx = idx;
	return idx;
}