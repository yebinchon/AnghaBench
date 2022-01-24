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
struct svc_rqst {struct nfsd3_attrstat* rq_resp; struct nfsd_fhandle* rq_argp; } ;
struct nfsd_fhandle {int /*<<< orphan*/  fh; } ;
struct nfsd3_attrstat {int /*<<< orphan*/  stat; int /*<<< orphan*/  fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int NFSD_MAY_BYPASS_GSS_ON_ROOT ; 
 int NFSD_MAY_NOP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __be32
FUNC6(struct svc_rqst *rqstp)
{
	struct nfsd_fhandle *argp = rqstp->rq_argp;
	struct nfsd3_attrstat *resp = rqstp->rq_resp;
	__be32	nfserr;

	FUNC2("nfsd: GETATTR(3)  %s\n",
		FUNC1(&argp->fh));

	FUNC3(&resp->fh, &argp->fh);
	nfserr = FUNC5(rqstp, &resp->fh, 0,
			NFSD_MAY_NOP | NFSD_MAY_BYPASS_GSS_ON_ROOT);
	if (nfserr)
		FUNC0(nfserr);

	nfserr = FUNC4(&resp->fh, &resp->stat);

	FUNC0(nfserr);
}