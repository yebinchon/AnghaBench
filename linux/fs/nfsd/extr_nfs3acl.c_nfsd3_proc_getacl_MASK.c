#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fh_dentry; } ;
typedef  TYPE_1__ svc_fh ;
struct svc_rqst {struct nfsd3_getaclres* rq_resp; struct nfsd3_getaclargs* rq_argp; } ;
struct posix_acl {int dummy; } ;
struct nfsd3_getaclres {int mask; struct posix_acl* acl_default; struct posix_acl* acl_access; int /*<<< orphan*/  fh; } ;
struct nfsd3_getaclargs {int mask; int /*<<< orphan*/  fh; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int /*<<< orphan*/  NFSD_MAY_NOP ; 
 int NFS_ACL ; 
 int NFS_ACLCNT ; 
 int NFS_ACL_MASK ; 
 int NFS_DFACL ; 
 int NFS_DFACLCNT ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr_inval ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct posix_acl*) ; 

__attribute__((used)) static __be32 FUNC10(struct svc_rqst *rqstp)
{
	struct nfsd3_getaclargs *argp = rqstp->rq_argp;
	struct nfsd3_getaclres *resp = rqstp->rq_resp;
	struct posix_acl *acl;
	struct inode *inode;
	svc_fh *fh;
	__be32 nfserr = 0;

	fh = FUNC4(&resp->fh, &argp->fh);
	nfserr = FUNC5(rqstp, &resp->fh, 0, NFSD_MAY_NOP);
	if (nfserr)
		FUNC2(nfserr);

	inode = FUNC3(fh->fh_dentry);

	if (argp->mask & ~NFS_ACL_MASK)
		FUNC2(nfserr_inval);
	resp->mask = argp->mask;

	if (resp->mask & (NFS_ACL|NFS_ACLCNT)) {
		acl = FUNC6(inode, ACL_TYPE_ACCESS);
		if (acl == NULL) {
			/* Solaris returns the inode's minimum ACL. */
			acl = FUNC8(inode->i_mode, GFP_KERNEL);
		}
		if (FUNC0(acl)) {
			nfserr = FUNC7(FUNC1(acl));
			goto fail;
		}
		resp->acl_access = acl;
	}
	if (resp->mask & (NFS_DFACL|NFS_DFACLCNT)) {
		/* Check how Solaris handles requests for the Default ACL
		   of a non-directory! */
		acl = FUNC6(inode, ACL_TYPE_DEFAULT);
		if (FUNC0(acl)) {
			nfserr = FUNC7(FUNC1(acl));
			goto fail;
		}
		resp->acl_default = acl;
	}

	/* resp->acl_{access,default} are released in nfs3svc_release_getacl. */
	FUNC2(0);

fail:
	FUNC9(resp->acl_access);
	FUNC9(resp->acl_default);
	FUNC2(nfserr);
}