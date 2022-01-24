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
struct nfsd4_lock {int /*<<< orphan*/  lk_new_owner; int /*<<< orphan*/  lk_new_lock_seqid; } ;
struct nfs4_ol_stateid {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  so_strhash; int /*<<< orphan*/ * so_ops; int /*<<< orphan*/  so_seqid; scalar_t__ so_is_open_owner; int /*<<< orphan*/  so_stateids; } ;
struct nfs4_lockowner {TYPE_1__ lo_owner; int /*<<< orphan*/  lo_blocked; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; int /*<<< orphan*/ * cl_ownerstr_hashtbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfs4_lockowner* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs4_client*) ; 
 struct nfs4_lockowner* FUNC2 (struct nfs4_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lockowner_ops ; 
 int /*<<< orphan*/  lockowner_slab ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_lockowner *
FUNC7(unsigned int strhashval, struct nfs4_client *clp,
			   struct nfs4_ol_stateid *open_stp,
			   struct nfsd4_lock *lock)
{
	struct nfs4_lockowner *lo, *ret;

	lo = FUNC1(lockowner_slab, &lock->lk_new_owner, clp);
	if (!lo)
		return NULL;
	FUNC0(&lo->lo_blocked);
	FUNC0(&lo->lo_owner.so_stateids);
	lo->lo_owner.so_is_open_owner = 0;
	lo->lo_owner.so_seqid = lock->lk_new_lock_seqid;
	lo->lo_owner.so_ops = &lockowner_ops;
	FUNC5(&clp->cl_lock);
	ret = FUNC2(clp, &lock->lk_new_owner);
	if (ret == NULL) {
		FUNC3(&lo->lo_owner.so_strhash,
			 &clp->cl_ownerstr_hashtbl[strhashval]);
		ret = lo;
	} else
		FUNC4(&lo->lo_owner);

	FUNC6(&clp->cl_lock);
	return ret;
}