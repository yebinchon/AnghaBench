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
struct svc_fh {int dummy; } ;
struct nfsd_file {int /*<<< orphan*/  nf_file; } ;
struct nfs4_file {int fi_delegees; struct nfsd_file* fi_deleg_file; int /*<<< orphan*/  fi_lock; scalar_t__ fi_had_conflict; } ;
struct nfs4_delegation {int /*<<< orphan*/  dl_stid; int /*<<< orphan*/  dl_clnt_odstate; } ;
struct nfs4_clnt_odstate {int dummy; } ;
struct nfs4_client {int dummy; } ;
struct file_lock {int /*<<< orphan*/  fl_type; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADF ; 
 int ENOMEM ; 
 struct nfs4_delegation* FUNC0 (int) ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  NFS4_OPEN_DELEGATE_READ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct nfs4_delegation* FUNC2 (struct nfs4_client*,struct nfs4_file*,struct svc_fh*,struct nfs4_clnt_odstate*) ; 
 struct nfsd_file* FUNC3 (struct nfs4_file*) ; 
 int FUNC4 (struct nfs4_delegation*,struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file_lock*) ; 
 struct file_lock* FUNC6 (struct nfs4_delegation*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct nfs4_client*,struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state_lock ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file_lock**,void**) ; 

__attribute__((used)) static struct nfs4_delegation *
FUNC15(struct nfs4_client *clp, struct svc_fh *fh,
		    struct nfs4_file *fp, struct nfs4_clnt_odstate *odstate)
{
	int status = 0;
	struct nfs4_delegation *dp;
	struct nfsd_file *nf;
	struct file_lock *fl;

	/*
	 * The fi_had_conflict and nfs_get_existing_delegation checks
	 * here are just optimizations; we'll need to recheck them at
	 * the end:
	 */
	if (fp->fi_had_conflict)
		return FUNC0(-EAGAIN);

	nf = FUNC3(fp);
	if (!nf) {
		/* We should always have a readable file here */
		FUNC1(1);
		return FUNC0(-EBADF);
	}
	FUNC12(&state_lock);
	FUNC12(&fp->fi_lock);
	if (FUNC7(clp, fp))
		status = -EAGAIN;
	else if (!fp->fi_deleg_file) {
		fp->fi_deleg_file = nf;
		/* increment early to prevent fi_deleg_file from being
		 * cleared */
		fp->fi_delegees = 1;
		nf = NULL;
	} else
		fp->fi_delegees++;
	FUNC13(&fp->fi_lock);
	FUNC13(&state_lock);
	if (nf)
		FUNC9(nf);
	if (status)
		return FUNC0(status);

	status = -ENOMEM;
	dp = FUNC2(clp, fp, fh, odstate);
	if (!dp)
		goto out_delegees;

	fl = FUNC6(dp, NFS4_OPEN_DELEGATE_READ);
	if (!fl)
		goto out_clnt_odstate;

	status = FUNC14(fp->fi_deleg_file->nf_file, fl->fl_type, &fl, NULL);
	if (fl)
		FUNC5(fl);
	if (status)
		goto out_clnt_odstate;

	FUNC12(&state_lock);
	FUNC12(&fp->fi_lock);
	if (fp->fi_had_conflict)
		status = -EAGAIN;
	else
		status = FUNC4(dp, fp);
	FUNC13(&fp->fi_lock);
	FUNC13(&state_lock);

	if (status)
		goto out_unlock;

	return dp;
out_unlock:
	FUNC14(fp->fi_deleg_file->nf_file, F_UNLCK, NULL, (void **)&dp);
out_clnt_odstate:
	FUNC10(dp->dl_clnt_odstate);
	FUNC8(&dp->dl_stid);
out_delegees:
	FUNC11(fp);
	return FUNC0(status);
}