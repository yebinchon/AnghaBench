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
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {struct page** rq_next_page; struct page** rq_respages; struct nfsd3_readdirres* rq_resp; struct nfsd3_readdirargs* rq_argp; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  err; } ;
struct nfsd3_readdirres {int buflen; int count; void** offset; void** offset1; scalar_t__ buffer; int /*<<< orphan*/  verf; TYPE_1__ common; int /*<<< orphan*/  fh; struct svc_rqst* rqstp; } ;
struct nfsd3_readdirargs {int count; int cookie; int /*<<< orphan*/  verf; scalar_t__ buffer; int /*<<< orphan*/  fh; } ;
typedef  int loff_t ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfs3svc_encode_entry ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  FUNC6 (struct svc_rqst*,int /*<<< orphan*/ *,int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (void**,int) ; 

__attribute__((used)) static __be32
FUNC10(struct svc_rqst *rqstp)
{
	struct nfsd3_readdirargs *argp = rqstp->rq_argp;
	struct nfsd3_readdirres  *resp = rqstp->rq_resp;
	__be32		nfserr;
	int		count = 0;
	struct page	**p;
	caddr_t		page_addr = NULL;

	FUNC2("nfsd: READDIR(3)  %s %d bytes at %d\n",
				FUNC1(&argp->fh),
				argp->count, (u32) argp->cookie);

	/* Make sure we've room for the NULL ptr & eof flag, and shrink to
	 * client read size */
	count = (argp->count >> 2) - 2;

	/* Read directory and encode entries on the fly */
	FUNC3(&resp->fh, &argp->fh);

	resp->buflen = count;
	resp->common.err = nfs_ok;
	resp->buffer = argp->buffer;
	resp->rqstp = rqstp;
	nfserr = FUNC6(rqstp, &resp->fh, (loff_t*) &argp->cookie, 
					&resp->common, nfs3svc_encode_entry);
	FUNC5(resp->verf, argp->verf, 8);
	count = 0;
	for (p = rqstp->rq_respages + 1; p < rqstp->rq_next_page; p++) {
		page_addr = FUNC7(*p);

		if (((caddr_t)resp->buffer >= page_addr) &&
		    ((caddr_t)resp->buffer < page_addr + PAGE_SIZE)) {
			count += (caddr_t)resp->buffer - page_addr;
			break;
		}
		count += PAGE_SIZE;
	}
	resp->count = count >> 2;
	if (resp->offset) {
		loff_t offset = argp->cookie;

		if (FUNC8(resp->offset1)) {
			/* we ended up with offset on a page boundary */
			*resp->offset = FUNC4(offset >> 32);
			*resp->offset1 = FUNC4(offset & 0xffffffff);
			resp->offset1 = NULL;
		} else {
			FUNC9(resp->offset, offset);
		}
		resp->offset = NULL;
	}

	FUNC0(nfserr);
}