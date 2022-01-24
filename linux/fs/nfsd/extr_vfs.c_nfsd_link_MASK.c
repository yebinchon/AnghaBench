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
struct svc_rqst {int rq_vers; } ;
struct svc_fh {struct dentry* fh_dentry; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EXDEV ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  NFSD_MAY_CREATE ; 
 int /*<<< orphan*/  NFSD_MAY_NOP ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int FUNC2 (struct svc_fh*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_fh*) ; 
 scalar_t__ FUNC10 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct svc_fh*) ; 
 scalar_t__ FUNC12 (char*,int) ; 
 struct dentry* FUNC13 (char*,struct dentry*,int) ; 
 scalar_t__ nfserr_acces ; 
 scalar_t__ nfserr_exist ; 
 scalar_t__ nfserr_isdir ; 
 scalar_t__ nfserr_noent ; 
 scalar_t__ nfserr_perm ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (struct dentry*,struct inode*,struct dentry*,int /*<<< orphan*/ *) ; 

__be32
FUNC16(struct svc_rqst *rqstp, struct svc_fh *ffhp,
				char *name, int len, struct svc_fh *tfhp)
{
	struct dentry	*ddir, *dnew, *dold;
	struct inode	*dirp;
	__be32		err;
	int		host_err;

	err = FUNC10(rqstp, ffhp, S_IFDIR, NFSD_MAY_CREATE);
	if (err)
		goto out;
	err = FUNC10(rqstp, tfhp, 0, NFSD_MAY_NOP);
	if (err)
		goto out;
	err = nfserr_isdir;
	if (FUNC4(tfhp->fh_dentry))
		goto out;
	err = nfserr_perm;
	if (!len)
		goto out;
	err = nfserr_exist;
	if (FUNC12(name, len))
		goto out;

	host_err = FUNC11(tfhp);
	if (host_err) {
		err = FUNC14(host_err);
		goto out;
	}

	FUNC8(ffhp, I_MUTEX_PARENT);
	ddir = ffhp->fh_dentry;
	dirp = FUNC3(ddir);

	dnew = FUNC13(name, ddir, len);
	host_err = FUNC1(dnew);
	if (FUNC0(dnew))
		goto out_nfserr;

	dold = tfhp->fh_dentry;

	err = nfserr_noent;
	if (FUNC5(dold))
		goto out_dput;
	host_err = FUNC15(dold, dirp, dnew, NULL);
	if (!host_err) {
		err = FUNC14(FUNC2(ffhp));
		if (!err)
			err = FUNC14(FUNC2(tfhp));
	} else {
		if (host_err == -EXDEV && rqstp->rq_vers == 2)
			err = nfserr_acces;
		else
			err = FUNC14(host_err);
	}
out_dput:
	FUNC6(dnew);
out_unlock:
	FUNC9(ffhp);
	FUNC7(tfhp);
out:
	return err;

out_nfserr:
	err = FUNC14(host_err);
	goto out_unlock;
}