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
struct svc_rqst {struct nfsd_attrstat* rq_resp; struct nfsd_fhandle* rq_argp; } ;
struct nfsd_fhandle {int /*<<< orphan*/  fh; } ;
struct nfsd_attrstat {int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int NFSD_MAY_BYPASS_GSS_ON_ROOT ; 
 int NFSD_MAY_NOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nfsd_attrstat*) ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp)
{
	struct nfsd_fhandle *argp = rqstp->rq_argp;
	struct nfsd_attrstat *resp = rqstp->rq_resp;
	__be32 nfserr;
	FUNC1("nfsd: GETATTR  %s\n", FUNC0(&argp->fh));

	FUNC2(&resp->fh, &argp->fh);
	nfserr = FUNC3(rqstp, &resp->fh, 0,
			NFSD_MAY_NOP | NFSD_MAY_BYPASS_GSS_ON_ROOT);
	return FUNC4(nfserr, resp);
}