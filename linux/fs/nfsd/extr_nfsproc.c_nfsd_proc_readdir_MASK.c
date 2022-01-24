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
struct svc_rqst {struct nfsd_readdirres* rq_resp; struct nfsd_readdirargs* rq_argp; } ;
struct TYPE_2__ {int /*<<< orphan*/  err; } ;
struct nfsd_readdirres {int buflen; int /*<<< orphan*/ * offset; scalar_t__ buffer; scalar_t__ count; TYPE_1__ common; } ;
struct nfsd_readdirargs {int count; int /*<<< orphan*/  fh; scalar_t__ buffer; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfssvc_encode_entry ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp)
{
	struct nfsd_readdirargs *argp = rqstp->rq_argp;
	struct nfsd_readdirres *resp = rqstp->rq_resp;
	int		count;
	__be32		nfserr;
	loff_t		offset;

	FUNC1("nfsd: READDIR  %s %d bytes at %d\n",
		FUNC0(&argp->fh),		
		argp->count, argp->cookie);

	/* Shrink to the client read size */
	count = (argp->count >> 2) - 2;

	/* Make sure we've room for the NULL ptr & eof flag */
	count -= 2;
	if (count < 0)
		count = 0;

	resp->buffer = argp->buffer;
	resp->offset = NULL;
	resp->buflen = count;
	resp->common.err = nfs_ok;
	/* Read directory and encode entries on the fly */
	offset = argp->cookie;
	nfserr = FUNC4(rqstp, &argp->fh, &offset, 
			      &resp->common, nfssvc_encode_entry);

	resp->count = resp->buffer - argp->buffer;
	if (resp->offset)
		*resp->offset = FUNC3(offset);

	FUNC2(&argp->fh);
	return nfserr;
}