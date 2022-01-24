#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfsd4_lock {scalar_t__ lk_new_lock_seqid; int /*<<< orphan*/  lk_new_owner; } ;
struct TYPE_7__ {int /*<<< orphan*/  fh_dentry; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  minorversion; TYPE_3__ current_fh; } ;
struct TYPE_6__ {struct nfs4_client* so_client; } ;
struct nfs4_openowner {TYPE_2__ oo_owner; } ;
struct TYPE_5__ {struct nfs4_file* sc_file; } ;
struct nfs4_ol_stateid {int /*<<< orphan*/  st_stateowner; TYPE_1__ st_stid; } ;
struct TYPE_8__ {scalar_t__ so_seqid; } ;
struct nfs4_lockowner {TYPE_4__ lo_owner; } ;
struct nfs4_file {int dummy; } ;
struct nfs4_client {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct nfs4_lockowner* FUNC0 (unsigned int,struct nfs4_client*,struct nfs4_ol_stateid*,struct nfsd4_lock*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs4_lockowner* FUNC2 (struct nfs4_client*,int /*<<< orphan*/ *) ; 
 struct nfs4_ol_stateid* FUNC3 (struct nfs4_lockowner*,struct nfs4_file*,struct inode*,struct nfs4_ol_stateid*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_bad_seqid ; 
 int /*<<< orphan*/  nfserr_jukebox ; 
 struct nfs4_openowner* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC7(struct nfsd4_compound_state *cstate,
			    struct nfs4_ol_stateid *ost,
			    struct nfsd4_lock *lock,
			    struct nfs4_ol_stateid **plst, bool *new)
{
	__be32 status;
	struct nfs4_file *fi = ost->st_stid.sc_file;
	struct nfs4_openowner *oo = FUNC5(ost->st_stateowner);
	struct nfs4_client *cl = oo->oo_owner.so_client;
	struct inode *inode = FUNC1(cstate->current_fh.fh_dentry);
	struct nfs4_lockowner *lo;
	struct nfs4_ol_stateid *lst;
	unsigned int strhashval;

	lo = FUNC2(cl, &lock->lk_new_owner);
	if (!lo) {
		strhashval = FUNC6(&lock->lk_new_owner);
		lo = FUNC0(strhashval, cl, ost, lock);
		if (lo == NULL)
			return nfserr_jukebox;
	} else {
		/* with an existing lockowner, seqids must be the same */
		status = nfserr_bad_seqid;
		if (!cstate->minorversion &&
		    lock->lk_new_lock_seqid != lo->lo_owner.so_seqid)
			goto out;
	}

	lst = FUNC3(lo, fi, inode, ost, new);
	if (lst == NULL) {
		status = nfserr_jukebox;
		goto out;
	}

	status = nfs_ok;
	*plst = lst;
out:
	FUNC4(&lo->lo_owner);
	return status;
}