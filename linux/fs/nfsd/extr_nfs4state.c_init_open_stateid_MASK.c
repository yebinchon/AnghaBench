#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfsd4_open {struct nfs4_ol_stateid* op_stp; struct nfs4_openowner* op_openowner; } ;
struct TYPE_6__ {TYPE_1__* so_client; int /*<<< orphan*/  so_stateids; } ;
struct nfs4_openowner {TYPE_3__ oo_owner; } ;
struct TYPE_5__ {struct nfs4_file* sc_file; int /*<<< orphan*/  sc_type; int /*<<< orphan*/  sc_count; } ;
struct nfs4_ol_stateid {int /*<<< orphan*/  st_mutex; TYPE_2__ st_stid; int /*<<< orphan*/  st_perfile; int /*<<< orphan*/  st_perstateowner; int /*<<< orphan*/ * st_openstp; scalar_t__ st_deny_bmap; scalar_t__ st_access_bmap; int /*<<< orphan*/  st_stateowner; int /*<<< orphan*/  st_locks; } ;
struct nfs4_file {int /*<<< orphan*/  fi_lock; int /*<<< orphan*/  fi_stateids; } ;
struct TYPE_4__ {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS4_OPEN_STID ; 
 int /*<<< orphan*/  OPEN_STATEID_MUTEX ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ nfs_ok ; 
 struct nfs4_ol_stateid* FUNC8 (struct nfs4_file*,struct nfsd4_open*) ; 
 scalar_t__ FUNC9 (struct nfs4_ol_stateid*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_ol_stateid *
FUNC13(struct nfs4_file *fp, struct nfsd4_open *open)
{

	struct nfs4_openowner *oo = open->op_openowner;
	struct nfs4_ol_stateid *retstp = NULL;
	struct nfs4_ol_stateid *stp;

	stp = open->op_stp;
	/* We are moving these outside of the spinlocks to avoid the warnings */
	FUNC3(&stp->st_mutex);
	FUNC4(&stp->st_mutex, OPEN_STATEID_MUTEX);

retry:
	FUNC11(&oo->oo_owner.so_client->cl_lock);
	FUNC11(&fp->fi_lock);

	retstp = FUNC8(fp, open);
	if (retstp)
		goto out_unlock;

	open->op_stp = NULL;
	FUNC10(&stp->st_stid.sc_count);
	stp->st_stid.sc_type = NFS4_OPEN_STID;
	FUNC0(&stp->st_locks);
	stp->st_stateowner = FUNC6(&oo->oo_owner);
	FUNC1(fp);
	stp->st_stid.sc_file = fp;
	stp->st_access_bmap = 0;
	stp->st_deny_bmap = 0;
	stp->st_openstp = NULL;
	FUNC2(&stp->st_perstateowner, &oo->oo_owner.so_stateids);
	FUNC2(&stp->st_perfile, &fp->fi_stateids);

out_unlock:
	FUNC12(&fp->fi_lock);
	FUNC12(&oo->oo_owner.so_client->cl_lock);
	if (retstp) {
		/* Handle races with CLOSE */
		if (FUNC9(retstp) != nfs_ok) {
			FUNC7(&retstp->st_stid);
			goto retry;
		}
		/* To keep mutex tracking happy */
		FUNC5(&stp->st_mutex);
		stp = retstp;
	}
	return stp;
}