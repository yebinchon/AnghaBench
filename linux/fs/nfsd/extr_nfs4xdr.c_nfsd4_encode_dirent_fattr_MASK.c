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
struct xdr_stream {int dummy; } ;
struct svc_export {int ex_flags; } ;
struct nfsd4_readdir {int /*<<< orphan*/  rd_rqstp; int /*<<< orphan*/  rd_bmval; TYPE_1__* rd_fhp; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  fh_dentry; struct svc_export* fh_export; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int NFSEXP_V4ROOT ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct svc_export*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_export*) ; 
 struct dentry* FUNC8 (char const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct xdr_stream*,int /*<<< orphan*/ *,struct svc_export*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct dentry**,struct svc_export**) ; 
 scalar_t__ FUNC11 (struct dentry*,struct svc_export*) ; 
 scalar_t__ nfserr_noent ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static __be32
FUNC13(struct xdr_stream *xdr, struct nfsd4_readdir *cd,
			const char *name, int namlen)
{
	struct svc_export *exp = cd->rd_fhp->fh_export;
	struct dentry *dentry;
	__be32 nfserr;
	int ignore_crossmnt = 0;

	dentry = FUNC8(name, cd->rd_fhp->fh_dentry, namlen);
	if (FUNC0(dentry))
		return FUNC12(FUNC1(dentry));
	if (FUNC4(dentry)) {
		/*
		 * we're not holding the i_mutex here, so there's
		 * a window where this directory entry could have gone
		 * away.
		 */
		FUNC5(dentry);
		return nfserr_noent;
	}

	FUNC6(exp);
	/*
	 * In the case of a mountpoint, the client may be asking for
	 * attributes that are only properties of the underlying filesystem
	 * as opposed to the cross-mounted file system. In such a case,
	 * we will not follow the cross mount and will fill the attribtutes
	 * directly from the mountpoint dentry.
	 */
	if (FUNC11(dentry, exp)) {
		int err;

		if (!(exp->ex_flags & NFSEXP_V4ROOT)
				&& !FUNC2(cd->rd_bmval)) {
			ignore_crossmnt = 1;
			goto out_encode;
		}
		/*
		 * Why the heck aren't we just using nfsd_lookup??
		 * Different "."/".." handling?  Something else?
		 * At least, add a comment here to explain....
		 */
		err = FUNC10(cd->rd_rqstp, &dentry, &exp);
		if (err) {
			nfserr = FUNC12(err);
			goto out_put;
		}
		nfserr = FUNC3(exp, cd->rd_rqstp);
		if (nfserr)
			goto out_put;

	}
out_encode:
	nfserr = FUNC9(xdr, NULL, exp, dentry, cd->rd_bmval,
					cd->rd_rqstp, ignore_crossmnt);
out_put:
	FUNC5(dentry);
	FUNC7(exp);
	return nfserr;
}