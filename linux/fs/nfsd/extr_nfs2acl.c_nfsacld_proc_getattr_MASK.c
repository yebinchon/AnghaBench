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
struct nfsd_attrstat {int /*<<< orphan*/  stat; int /*<<< orphan*/  fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_MAY_NOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC5(struct svc_rqst *rqstp)
{
	struct nfsd_fhandle *argp = rqstp->rq_argp;
	struct nfsd_attrstat *resp = rqstp->rq_resp;
	__be32 nfserr;
	FUNC1("nfsd: GETATTR  %s\n", FUNC0(&argp->fh));

	FUNC2(&resp->fh, &argp->fh);
	nfserr = FUNC4(rqstp, &resp->fh, 0, NFSD_MAY_NOP);
	if (nfserr)
		return nfserr;
	nfserr = FUNC3(&resp->fh, &resp->stat);
	return nfserr;
}