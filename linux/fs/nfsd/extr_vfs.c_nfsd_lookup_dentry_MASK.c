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
struct svc_rqst {int dummy; } ;
struct svc_fh {int /*<<< orphan*/  fh_export; struct dentry* fh_dentry; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct svc_export {TYPE_1__ ex_path; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_export*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_fh*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 struct svc_export* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC10 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct svc_fh*) ; 
 scalar_t__ FUNC12 (char const*,unsigned int) ; 
 struct dentry* FUNC13 (char const*,struct dentry*,unsigned int) ; 
 int FUNC14 (struct svc_rqst*,struct dentry**,struct svc_export**) ; 
 int FUNC15 (struct svc_rqst*,struct dentry*,struct svc_export**,struct dentry**) ; 
 scalar_t__ FUNC16 (struct dentry*,struct svc_export*) ; 
 int /*<<< orphan*/  FUNC17 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__be32
FUNC19(struct svc_rqst *rqstp, struct svc_fh *fhp,
		   const char *name, unsigned int len,
		   struct svc_export **exp_ret, struct dentry **dentry_ret)
{
	struct svc_export	*exp;
	struct dentry		*dparent;
	struct dentry		*dentry;
	int			host_err;

	FUNC6("nfsd: nfsd_lookup(fh %s, %.*s)\n", FUNC3(fhp), len,name);

	dparent = fhp->fh_dentry;
	exp = FUNC8(fhp->fh_export);

	/* Lookup the name, but don't follow links */
	if (FUNC12(name, len)) {
		if (len==1)
			dentry = FUNC4(dparent);
		else if (dparent != exp->ex_path.dentry)
			dentry = FUNC5(dparent);
		else if (!FUNC0(exp) && !FUNC17(rqstp))
			dentry = FUNC4(dparent); /* .. == . just like at / */
		else {
			/* checking mountpoint crossing is very different when stepping up */
			host_err = FUNC15(rqstp, dparent, &exp, &dentry);
			if (host_err)
				goto out_nfserr;
		}
	} else {
		/*
		 * In the nfsd4_open() case, this may be held across
		 * subsequent open and delegation acquisition which may
		 * need to take the child's i_mutex:
		 */
		FUNC10(fhp, I_MUTEX_PARENT);
		dentry = FUNC13(name, dparent, len);
		host_err = FUNC2(dentry);
		if (FUNC1(dentry))
			goto out_nfserr;
		if (FUNC16(dentry, exp)) {
			/*
			 * We don't need the i_mutex after all.  It's
			 * still possible we could open this (regular
			 * files can be mountpoints too), but the
			 * i_mutex is just there to prevent renames of
			 * something that we might be about to delegate,
			 * and a mountpoint won't be renamed:
			 */
			FUNC11(fhp);
			if ((host_err = FUNC14(rqstp, &dentry, &exp))) {
				FUNC7(dentry);
				goto out_nfserr;
			}
		}
	}
	*dentry_ret = dentry;
	*exp_ret = exp;
	return 0;

out_nfserr:
	FUNC9(exp);
	return FUNC18(host_err);
}