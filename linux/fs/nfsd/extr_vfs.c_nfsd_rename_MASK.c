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
struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_locked; TYPE_2__* fh_export; struct dentry* fh_dentry; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_3__ {scalar_t__ mnt; scalar_t__ dentry; } ;
struct TYPE_4__ {TYPE_1__ ex_path; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int EXDEV ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  NFSD_MAY_CREATE ; 
 int /*<<< orphan*/  NFSD_MAY_REMOVE ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int FUNC2 (struct svc_fh*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_fh*) ; 
 scalar_t__ FUNC7 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC10 (struct svc_fh*) ; 
 scalar_t__ FUNC11 (char*,int) ; 
 struct dentry* FUNC12 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC13 (char*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry*) ; 
 scalar_t__ FUNC15 (struct dentry*) ; 
 scalar_t__ nfserr_perm ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct dentry*,struct dentry*) ; 
 int FUNC18 (struct inode*,struct dentry*,struct inode*,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__be32
FUNC19(struct svc_rqst *rqstp, struct svc_fh *ffhp, char *fname, int flen,
			    struct svc_fh *tfhp, char *tname, int tlen)
{
	struct dentry	*fdentry, *tdentry, *odentry, *ndentry, *trap;
	struct inode	*fdir, *tdir;
	__be32		err;
	int		host_err;
	bool		has_cached = false;

	err = FUNC7(rqstp, ffhp, S_IFDIR, NFSD_MAY_REMOVE);
	if (err)
		goto out;
	err = FUNC7(rqstp, tfhp, S_IFDIR, NFSD_MAY_CREATE);
	if (err)
		goto out;

	fdentry = ffhp->fh_dentry;
	fdir = FUNC3(fdentry);

	tdentry = tfhp->fh_dentry;
	tdir = FUNC3(tdentry);

	err = nfserr_perm;
	if (!flen || FUNC11(fname, flen) || !tlen || FUNC11(tname, tlen))
		goto out;

retry:
	host_err = FUNC8(ffhp);
	if (host_err) {
		err = FUNC16(host_err);
		goto out;
	}

	/* cannot use fh_lock as we need deadlock protective ordering
	 * so do it by hand */
	trap = FUNC12(tdentry, fdentry);
	ffhp->fh_locked = tfhp->fh_locked = true;
	FUNC10(ffhp);
	FUNC10(tfhp);

	odentry = FUNC13(fname, fdentry, flen);
	host_err = FUNC1(odentry);
	if (FUNC0(odentry))
		goto out_nfserr;

	host_err = -ENOENT;
	if (FUNC4(odentry))
		goto out_dput_old;
	host_err = -EINVAL;
	if (odentry == trap)
		goto out_dput_old;

	ndentry = FUNC13(tname, tdentry, tlen);
	host_err = FUNC1(ndentry);
	if (FUNC0(ndentry))
		goto out_dput_old;
	host_err = -ENOTEMPTY;
	if (ndentry == trap)
		goto out_dput_new;

	host_err = -EXDEV;
	if (ffhp->fh_export->ex_path.mnt != tfhp->fh_export->ex_path.mnt)
		goto out_dput_new;
	if (ffhp->fh_export->ex_path.dentry != tfhp->fh_export->ex_path.dentry)
		goto out_dput_new;

	if (FUNC15(ndentry)) {
		has_cached = true;
		goto out_dput_old;
	} else {
		host_err = FUNC18(fdir, odentry, tdir, ndentry, NULL, 0);
		if (!host_err) {
			host_err = FUNC2(tfhp);
			if (!host_err)
				host_err = FUNC2(ffhp);
		}
	}
 out_dput_new:
	FUNC5(ndentry);
 out_dput_old:
	FUNC5(odentry);
 out_nfserr:
	err = FUNC16(host_err);
	/*
	 * We cannot rely on fh_unlock on the two filehandles,
	 * as that would do the wrong thing if the two directories
	 * were the same, so again we do it by hand.
	 */
	if (!has_cached) {
		FUNC9(ffhp);
		FUNC9(tfhp);
	}
	FUNC17(tdentry, fdentry);
	ffhp->fh_locked = tfhp->fh_locked = false;
	FUNC6(ffhp);

	/*
	 * If the target dentry has cached open files, then we need to try to
	 * close them prior to doing the rename. Flushing delayed fput
	 * shouldn't be done with locks held however, so we delay it until this
	 * point and then reattempt the whole shebang.
	 */
	if (has_cached) {
		has_cached = false;
		FUNC14(ndentry);
		FUNC5(ndentry);
		goto retry;
	}
out:
	return err;
}