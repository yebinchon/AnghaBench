#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct nfs4_file* sc_file; int /*<<< orphan*/  sc_type; int /*<<< orphan*/  sc_count; } ;
struct nfs4_ol_stateid {int /*<<< orphan*/  st_mutex; TYPE_1__ st_stid; int /*<<< orphan*/  st_perfile; int /*<<< orphan*/  st_perstateowner; int /*<<< orphan*/  st_locks; struct nfs4_ol_stateid* st_openstp; int /*<<< orphan*/  st_deny_bmap; scalar_t__ st_access_bmap; int /*<<< orphan*/  st_stateowner; } ;
struct TYPE_4__ {int /*<<< orphan*/  so_stateids; struct nfs4_client* so_client; } ;
struct nfs4_lockowner {TYPE_2__ lo_owner; } ;
struct nfs4_file {int /*<<< orphan*/  fi_lock; int /*<<< orphan*/  fi_stateids; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_LOCK_STID ; 
 int /*<<< orphan*/  OPEN_STATEID_MUTEX ; 
 struct nfs4_ol_stateid* FUNC0 (struct nfs4_lockowner*,struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC8 (struct nfs4_ol_stateid*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_ol_stateid *
FUNC12(struct nfs4_ol_stateid *stp, struct nfs4_lockowner *lo,
		  struct nfs4_file *fp, struct inode *inode,
		  struct nfs4_ol_stateid *open_stp)
{
	struct nfs4_client *clp = lo->lo_owner.so_client;
	struct nfs4_ol_stateid *retstp;

	FUNC3(&stp->st_mutex);
	FUNC4(&stp->st_mutex, OPEN_STATEID_MUTEX);
retry:
	FUNC10(&clp->cl_lock);
	FUNC10(&fp->fi_lock);
	retstp = FUNC0(lo, fp);
	if (retstp)
		goto out_unlock;

	FUNC9(&stp->st_stid.sc_count);
	stp->st_stid.sc_type = NFS4_LOCK_STID;
	stp->st_stateowner = FUNC6(&lo->lo_owner);
	FUNC1(fp);
	stp->st_stid.sc_file = fp;
	stp->st_access_bmap = 0;
	stp->st_deny_bmap = open_stp->st_deny_bmap;
	stp->st_openstp = open_stp;
	FUNC2(&stp->st_locks, &open_stp->st_locks);
	FUNC2(&stp->st_perstateowner, &lo->lo_owner.so_stateids);
	FUNC2(&stp->st_perfile, &fp->fi_stateids);
out_unlock:
	FUNC11(&fp->fi_lock);
	FUNC11(&clp->cl_lock);
	if (retstp) {
		if (FUNC8(retstp) != nfs_ok) {
			FUNC7(&retstp->st_stid);
			goto retry;
		}
		/* To keep mutex tracking happy */
		FUNC5(&stp->st_mutex);
		stp = retstp;
	}
	return stp;
}