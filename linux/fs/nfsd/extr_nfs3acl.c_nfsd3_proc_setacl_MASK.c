#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fh_dentry; } ;
typedef  TYPE_1__ svc_fh ;
struct svc_rqst {struct nfsd3_attrstat* rq_resp; struct nfsd3_setaclargs* rq_argp; } ;
struct nfsd3_setaclargs {int /*<<< orphan*/  acl_default; int /*<<< orphan*/  acl_access; int /*<<< orphan*/  fh; } ;
struct nfsd3_attrstat {int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  NFSD_MAY_SATTR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC11(struct svc_rqst *rqstp)
{
	struct nfsd3_setaclargs *argp = rqstp->rq_argp;
	struct nfsd3_attrstat *resp = rqstp->rq_resp;
	struct inode *inode;
	svc_fh *fh;
	__be32 nfserr = 0;
	int error;

	fh = FUNC2(&resp->fh, &argp->fh);
	nfserr = FUNC6(rqstp, &resp->fh, 0, NFSD_MAY_SATTR);
	if (nfserr)
		goto out;

	inode = FUNC1(fh->fh_dentry);

	error = FUNC7(fh);
	if (error)
		goto out_errno;

	FUNC4(fh);

	error = FUNC10(inode, ACL_TYPE_ACCESS, argp->acl_access);
	if (error)
		goto out_drop_lock;
	error = FUNC10(inode, ACL_TYPE_DEFAULT, argp->acl_default);

out_drop_lock:
	FUNC5(fh);
	FUNC3(fh);
out_errno:
	nfserr = FUNC8(error);
out:
	/* argp->acl_{access,default} may have been allocated in
	   nfs3svc_decode_setaclargs. */
	FUNC9(argp->acl_access);
	FUNC9(argp->acl_default);
	FUNC0(nfserr);
}