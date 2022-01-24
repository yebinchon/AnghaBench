#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fh_dentry; } ;
typedef  TYPE_1__ svc_fh ;
struct svc_rqst {struct nfsd_attrstat* rq_resp; struct nfsd3_setaclargs* rq_argp; } ;
struct nfsd_attrstat {int /*<<< orphan*/  stat; int /*<<< orphan*/  fh; } ;
struct nfsd3_setaclargs {int /*<<< orphan*/  acl_default; int /*<<< orphan*/  acl_access; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  NFSD_MAY_SATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC13(struct svc_rqst *rqstp)
{
	struct nfsd3_setaclargs *argp = rqstp->rq_argp;
	struct nfsd_attrstat *resp = rqstp->rq_resp;
	struct inode *inode;
	svc_fh *fh;
	__be32 nfserr = 0;
	int error;

	FUNC2("nfsd: SETACL(2acl)   %s\n", FUNC0(&argp->fh));

	fh = FUNC3(&resp->fh, &argp->fh);
	nfserr = FUNC8(rqstp, &resp->fh, 0, NFSD_MAY_SATTR);
	if (nfserr)
		goto out;

	inode = FUNC1(fh->fh_dentry);

	error = FUNC9(fh);
	if (error)
		goto out_errno;

	FUNC6(fh);

	error = FUNC12(inode, ACL_TYPE_ACCESS, argp->acl_access);
	if (error)
		goto out_drop_lock;
	error = FUNC12(inode, ACL_TYPE_DEFAULT, argp->acl_default);
	if (error)
		goto out_drop_lock;

	FUNC7(fh);

	FUNC4(fh);

	nfserr = FUNC5(fh, &resp->stat);

out:
	/* argp->acl_{access,default} may have been allocated in
	   nfssvc_decode_setaclargs. */
	FUNC11(argp->acl_access);
	FUNC11(argp->acl_default);
	return nfserr;
out_drop_lock:
	FUNC7(fh);
	FUNC4(fh);
out_errno:
	nfserr = FUNC10(error);
	goto out;
}