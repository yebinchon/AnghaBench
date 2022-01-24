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
struct nfs4_stid {int dummy; } ;
struct TYPE_2__ {struct nfs4_client* so_client; } ;
struct nfs4_openowner {TYPE_1__ oo_owner; } ;
struct nfs4_ol_stateid {struct nfs4_stid st_stid; int /*<<< orphan*/  st_stateowner; } ;
struct nfs4_lockowner {int dummy; } ;
struct nfs4_file {int dummy; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct nfs4_ol_stateid* FUNC0 (struct nfs4_lockowner*,struct nfs4_file*) ; 
 struct nfs4_ol_stateid* FUNC1 (struct nfs4_ol_stateid*,struct nfs4_lockowner*,struct nfs4_file*,struct inode*,struct nfs4_ol_stateid*) ; 
 struct nfs4_stid* FUNC2 (struct nfs4_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs4_free_lock_stateid ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_stid*) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC4 (struct nfs4_ol_stateid*) ; 
 struct nfs4_ol_stateid* FUNC5 (struct nfs4_stid*) ; 
 struct nfs4_openowner* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stateid_slab ; 

__attribute__((used)) static struct nfs4_ol_stateid *
FUNC9(struct nfs4_lockowner *lo, struct nfs4_file *fi,
			    struct inode *inode, struct nfs4_ol_stateid *ost,
			    bool *new)
{
	struct nfs4_stid *ns = NULL;
	struct nfs4_ol_stateid *lst;
	struct nfs4_openowner *oo = FUNC6(ost->st_stateowner);
	struct nfs4_client *clp = oo->oo_owner.so_client;

	*new = false;
	FUNC7(&clp->cl_lock);
	lst = FUNC0(lo, fi);
	FUNC8(&clp->cl_lock);
	if (lst != NULL) {
		if (FUNC4(lst) == nfs_ok)
			goto out;
		FUNC3(&lst->st_stid);
	}
	ns = FUNC2(clp, stateid_slab, nfs4_free_lock_stateid);
	if (ns == NULL)
		return NULL;

	lst = FUNC1(FUNC5(ns), lo, fi, inode, ost);
	if (lst == FUNC5(ns))
		*new = true;
	else
		FUNC3(ns);
out:
	return lst;
}