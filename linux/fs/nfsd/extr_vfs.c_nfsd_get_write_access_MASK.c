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
struct svc_fh {int /*<<< orphan*/  fh_dentry; int /*<<< orphan*/  fh_export; } ;
struct inode {scalar_t__ i_size; } ;
struct iattr {scalar_t__ ia_size; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int NFSD_MAY_OWNER_OVERRIDE ; 
 int NFSD_MAY_TRUNC ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static __be32
FUNC6(struct svc_rqst *rqstp, struct svc_fh *fhp,
		struct iattr *iap)
{
	struct inode *inode = FUNC0(fhp->fh_dentry);
	int host_err;

	if (iap->ia_size < inode->i_size) {
		__be32 err;

		err = FUNC3(rqstp, fhp->fh_export, fhp->fh_dentry,
				NFSD_MAY_TRUNC | NFSD_MAY_OWNER_OVERRIDE);
		if (err)
			return err;
	}

	host_err = FUNC1(inode);
	if (host_err)
		goto out_nfserrno;

	host_err = FUNC2(inode, NULL, iap->ia_size);
	if (host_err)
		goto out_put_write_access;
	return 0;

out_put_write_access:
	FUNC5(inode);
out_nfserrno:
	return FUNC4(host_err);
}