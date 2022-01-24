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
struct dentry {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  NFSD_MAY_CREATE ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int FUNC2 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct svc_fh*,int /*<<< orphan*/ ,struct dentry*,struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_fh*) ; 
 scalar_t__ FUNC9 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct svc_fh*) ; 
 scalar_t__ FUNC11 (char*,int) ; 
 struct dentry* FUNC12 (char*,struct dentry*,int) ; 
 scalar_t__ nfserr_exist ; 
 scalar_t__ nfserr_noent ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct dentry*,char*) ; 

__be32
FUNC15(struct svc_rqst *rqstp, struct svc_fh *fhp,
				char *fname, int flen,
				char *path,
				struct svc_fh *resfhp)
{
	struct dentry	*dentry, *dnew;
	__be32		err, cerr;
	int		host_err;

	err = nfserr_noent;
	if (!flen || path[0] == '\0')
		goto out;
	err = nfserr_exist;
	if (FUNC11(fname, flen))
		goto out;

	err = FUNC9(rqstp, fhp, S_IFDIR, NFSD_MAY_CREATE);
	if (err)
		goto out;

	host_err = FUNC10(fhp);
	if (host_err)
		goto out_nfserr;

	FUNC7(fhp);
	dentry = fhp->fh_dentry;
	dnew = FUNC12(fname, dentry, flen);
	host_err = FUNC1(dnew);
	if (FUNC0(dnew))
		goto out_nfserr;

	host_err = FUNC14(FUNC3(dentry), dnew, path);
	err = FUNC13(host_err);
	if (!err)
		err = FUNC13(FUNC2(fhp));
	FUNC8(fhp);

	FUNC6(fhp);

	cerr = FUNC5(resfhp, fhp->fh_export, dnew, fhp);
	FUNC4(dnew);
	if (err==0) err = cerr;
out:
	return err;

out_nfserr:
	err = FUNC13(host_err);
	goto out;
}