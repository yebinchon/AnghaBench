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
struct svc_fh {struct dentry* fh_dentry; } ;
struct posix_acl {int dummy; } ;
struct nfs4_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 unsigned int NFS4_ACL_DIR ; 
 int /*<<< orphan*/  NFSD_MAY_SATTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_fh*) ; 
 scalar_t__ FUNC4 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nfs4_acl*,struct posix_acl**,struct posix_acl**,unsigned int) ; 
 scalar_t__ nfserr_attrnotsupp ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct posix_acl*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 

__be32
FUNC9(struct svc_rqst *rqstp, struct svc_fh *fhp,
		struct nfs4_acl *acl)
{
	__be32 error;
	int host_error;
	struct dentry *dentry;
	struct inode *inode;
	struct posix_acl *pacl = NULL, *dpacl = NULL;
	unsigned int flags = 0;

	/* Get inode */
	error = FUNC4(rqstp, fhp, 0, NFSD_MAY_SATTR);
	if (error)
		return error;

	dentry = fhp->fh_dentry;
	inode = FUNC1(dentry);

	if (FUNC0(inode->i_mode))
		flags = NFS4_ACL_DIR;

	host_error = FUNC5(acl, &pacl, &dpacl, flags);
	if (host_error == -EINVAL)
		return nfserr_attrnotsupp;
	if (host_error < 0)
		goto out_nfserr;

	FUNC2(fhp);

	host_error = FUNC8(inode, ACL_TYPE_ACCESS, pacl);
	if (host_error < 0)
		goto out_drop_lock;

	if (FUNC0(inode->i_mode)) {
		host_error = FUNC8(inode, ACL_TYPE_DEFAULT, dpacl);
	}

out_drop_lock:
	FUNC3(fhp);

	FUNC7(pacl);
	FUNC7(dpacl);
out_nfserr:
	if (host_error == -EOPNOTSUPP)
		return nfserr_attrnotsupp;
	else
		return FUNC6(host_error);
}