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
struct TYPE_2__ {int /*<<< orphan*/  pages; } ;
struct svc_rqst {int /*<<< orphan*/  rq_vec; TYPE_1__ rq_arg; struct nfsd_attrstat* rq_resp; struct nfsd_writeargs* rq_argp; } ;
struct nfsd_writeargs {unsigned long len; int /*<<< orphan*/  offset; int /*<<< orphan*/  fh; int /*<<< orphan*/  first; } ;
struct nfsd_attrstat {int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DATA_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nfsd_attrstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_io ; 
 unsigned int FUNC5 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __be32
FUNC6(struct svc_rqst *rqstp)
{
	struct nfsd_writeargs *argp = rqstp->rq_argp;
	struct nfsd_attrstat *resp = rqstp->rq_resp;
	__be32	nfserr;
	unsigned long cnt = argp->len;
	unsigned int nvecs;

	FUNC1("nfsd: WRITE    %s %d bytes at %d\n",
		FUNC0(&argp->fh),
		argp->len, argp->offset);

	nvecs = FUNC5(rqstp, rqstp->rq_arg.pages,
				      &argp->first, cnt);
	if (!nvecs)
		return nfserr_io;
	nfserr = FUNC4(rqstp, FUNC2(&resp->fh, &argp->fh),
			    argp->offset, rqstp->rq_vec, nvecs,
			    &cnt, NFS_DATA_SYNC);
	return FUNC3(nfserr, resp);
}