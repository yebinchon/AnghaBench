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
struct svc_rqst {struct nfsd3_accessres* rq_resp; struct nfsd3_accessargs* rq_argp; } ;
struct nfsd3_accessres {int /*<<< orphan*/  access; int /*<<< orphan*/  fh; } ;
struct nfsd3_accessargs {int /*<<< orphan*/  access; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp)
{
	struct nfsd3_accessargs *argp = rqstp->rq_argp;
	struct nfsd3_accessres *resp = rqstp->rq_resp;
	__be32	nfserr;

	FUNC2("nfsd: ACCESS(3)   %s 0x%x\n",
				FUNC1(&argp->fh),
				argp->access);

	FUNC3(&resp->fh, &argp->fh);
	resp->access = argp->access;
	nfserr = FUNC4(rqstp, &resp->fh, &resp->access, NULL);
	FUNC0(nfserr);
}