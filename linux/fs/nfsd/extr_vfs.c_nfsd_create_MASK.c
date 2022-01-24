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
struct svc_rqst {int dummy; } ;
struct svc_fh {int /*<<< orphan*/  fh_export; struct dentry* fh_dentry; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  NFSD_MAY_NOP ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct svc_fh*,int /*<<< orphan*/ ,struct dentry*,struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct svc_fh*) ; 
 scalar_t__ FUNC7 (char*,int) ; 
 struct dentry* FUNC8 (char*,struct dentry*,int) ; 
 scalar_t__ FUNC9 (struct svc_rqst*,struct svc_fh*,char*,int,struct iattr*,int,int /*<<< orphan*/ ,struct svc_fh*) ; 
 scalar_t__ nfserr_exist ; 
 scalar_t__ FUNC10 (int) ; 

__be32
FUNC11(struct svc_rqst *rqstp, struct svc_fh *fhp,
		char *fname, int flen, struct iattr *iap,
		int type, dev_t rdev, struct svc_fh *resfhp)
{
	struct dentry	*dentry, *dchild = NULL;
	__be32		err;
	int		host_err;

	if (FUNC7(fname, flen))
		return nfserr_exist;

	err = FUNC5(rqstp, fhp, S_IFDIR, NFSD_MAY_NOP);
	if (err)
		return err;

	dentry = fhp->fh_dentry;

	host_err = FUNC6(fhp);
	if (host_err)
		return FUNC10(host_err);

	FUNC4(fhp, I_MUTEX_PARENT);
	dchild = FUNC8(fname, dentry, flen);
	host_err = FUNC1(dchild);
	if (FUNC0(dchild))
		return FUNC10(host_err);
	err = FUNC3(resfhp, fhp->fh_export, dchild, fhp);
	/*
	 * We unconditionally drop our ref to dchild as fh_compose will have
	 * already grabbed its own ref for it.
	 */
	FUNC2(dchild);
	if (err)
		return err;
	return FUNC9(rqstp, fhp, fname, flen, iap, type,
					rdev, resfhp);
}