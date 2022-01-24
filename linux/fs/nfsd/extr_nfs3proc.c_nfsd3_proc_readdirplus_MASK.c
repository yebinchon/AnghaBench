#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {struct page** rq_next_page; struct page** rq_respages; struct nfsd3_readdirres* rq_resp; struct nfsd3_readdirargs* rq_argp; } ;
struct page {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  err; } ;
struct TYPE_7__ {TYPE_1__* fh_export; } ;
struct nfsd3_readdirres {int count; int buflen; void** offset; void** offset1; scalar_t__ buffer; int /*<<< orphan*/  verf; TYPE_3__ common; TYPE_2__ fh; struct svc_rqst* rqstp; } ;
struct nfsd3_readdirargs {int count; int cookie; int /*<<< orphan*/  verf; scalar_t__ buffer; int /*<<< orphan*/  fh; } ;
typedef  int loff_t ;
typedef  scalar_t__ caddr_t ;
typedef  scalar_t__ __be32 ;
struct TYPE_6__ {int ex_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_MAY_NOP ; 
 int NFSEXP_NOREADDIRPLUS ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct svc_rqst*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfs3svc_encode_entry_plus ; 
 int /*<<< orphan*/  nfs_ok ; 
 scalar_t__ FUNC7 (struct svc_rqst*,TYPE_2__*,int*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr_notsupp ; 
 scalar_t__ FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (void**) ; 
 int /*<<< orphan*/  FUNC10 (void**,int) ; 

__attribute__((used)) static __be32
FUNC11(struct svc_rqst *rqstp)
{
	struct nfsd3_readdirargs *argp = rqstp->rq_argp;
	struct nfsd3_readdirres  *resp = rqstp->rq_resp;
	__be32	nfserr;
	int	count = 0;
	loff_t	offset;
	struct page **p;
	caddr_t	page_addr = NULL;

	FUNC2("nfsd: READDIR+(3) %s %d bytes at %d\n",
				FUNC1(&argp->fh),
				argp->count, (u32) argp->cookie);

	/* Convert byte count to number of words (i.e. >> 2),
	 * and reserve room for the NULL ptr & eof flag (-2 words) */
	resp->count = (argp->count >> 2) - 2;

	/* Read directory and encode entries on the fly */
	FUNC3(&resp->fh, &argp->fh);

	resp->common.err = nfs_ok;
	resp->buffer = argp->buffer;
	resp->buflen = resp->count;
	resp->rqstp = rqstp;
	offset = argp->cookie;

	nfserr = FUNC4(rqstp, &resp->fh, S_IFDIR, NFSD_MAY_NOP);
	if (nfserr)
		FUNC0(nfserr);

	if (resp->fh.fh_export->ex_flags & NFSEXP_NOREADDIRPLUS)
		FUNC0(nfserr_notsupp);

	nfserr = FUNC7(rqstp, &resp->fh,
				     &offset,
				     &resp->common,
				     nfs3svc_encode_entry_plus);
	FUNC6(resp->verf, argp->verf, 8);
	for (p = rqstp->rq_respages + 1; p < rqstp->rq_next_page; p++) {
		page_addr = FUNC8(*p);

		if (((caddr_t)resp->buffer >= page_addr) &&
		    ((caddr_t)resp->buffer < page_addr + PAGE_SIZE)) {
			count += (caddr_t)resp->buffer - page_addr;
			break;
		}
		count += PAGE_SIZE;
	}
	resp->count = count >> 2;
	if (resp->offset) {
		if (FUNC9(resp->offset1)) {
			/* we ended up with offset on a page boundary */
			*resp->offset = FUNC5(offset >> 32);
			*resp->offset1 = FUNC5(offset & 0xffffffff);
			resp->offset1 = NULL;
		} else {
			FUNC10(resp->offset, offset);
		}
		resp->offset = NULL;
	}

	FUNC0(nfserr);
}