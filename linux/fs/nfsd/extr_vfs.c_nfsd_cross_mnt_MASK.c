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
struct TYPE_2__ {scalar_t__ mnt; } ;
struct svc_export {int ex_flags; TYPE_1__ ex_path; } ;
struct path {scalar_t__ mnt; struct dentry* dentry; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct svc_export*) ; 
 scalar_t__ FUNC1 (struct svc_export*) ; 
 int NFSEXP_CROSSMOUNT ; 
 int NFSEXP_V4ROOT ; 
 int FUNC2 (struct svc_export*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_export*) ; 
 int FUNC5 (struct path*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (struct dentry*,struct svc_export*) ; 
 scalar_t__ FUNC8 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC9 (struct path*) ; 
 struct svc_export* FUNC10 (struct svc_rqst*,struct path*) ; 

int
FUNC11(struct svc_rqst *rqstp, struct dentry **dpp, 
		        struct svc_export **expp)
{
	struct svc_export *exp = *expp, *exp2 = NULL;
	struct dentry *dentry = *dpp;
	struct path path = {.mnt = FUNC6(exp->ex_path.mnt),
			    .dentry = FUNC3(dentry)};
	int err = 0;

	err = FUNC5(&path);
	if (err < 0)
		goto out;
	if (path.mnt == exp->ex_path.mnt && path.dentry == dentry &&
	    FUNC7(dentry, exp) == 2) {
		/* This is only a mountpoint in some other namespace */
		FUNC9(&path);
		goto out;
	}

	exp2 = FUNC10(rqstp, &path);
	if (FUNC1(exp2)) {
		err = FUNC2(exp2);
		/*
		 * We normally allow NFS clients to continue
		 * "underneath" a mountpoint that is not exported.
		 * The exception is V4ROOT, where no traversal is ever
		 * allowed without an explicit export of the new
		 * directory.
		 */
		if (err == -ENOENT && !(exp->ex_flags & NFSEXP_V4ROOT))
			err = 0;
		FUNC9(&path);
		goto out;
	}
	if (FUNC8(rqstp) ||
		(exp->ex_flags & NFSEXP_CROSSMOUNT) || FUNC0(exp2)) {
		/* successfully crossed mount point */
		/*
		 * This is subtle: path.dentry is *not* on path.mnt
		 * at this point.  The only reason we are safe is that
		 * original mnt is pinned down by exp, so we should
		 * put path *before* putting exp
		 */
		*dpp = path.dentry;
		path.dentry = dentry;
		*expp = exp2;
		exp2 = exp;
	}
	FUNC9(&path);
	FUNC4(exp2);
out:
	return err;
}