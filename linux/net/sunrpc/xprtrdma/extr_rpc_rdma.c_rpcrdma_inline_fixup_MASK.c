#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_5__* tail; TYPE_1__* head; } ;
struct TYPE_10__ {int page_base; int page_len; TYPE_3__* tail; struct page** pages; TYPE_2__* head; } ;
struct rpc_rqst {TYPE_6__ rq_private_buf; TYPE_4__ rq_rcv_buf; } ;
struct page {int dummy; } ;
struct TYPE_11__ {char* iov_base; } ;
struct TYPE_9__ {char* iov_base; } ;
struct TYPE_8__ {char* iov_base; int iov_len; } ;
struct TYPE_7__ {char* iov_base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 char* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_rqst*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_rqst*,int,char*,int,int) ; 

__attribute__((used)) static unsigned long
FUNC8(struct rpc_rqst *rqst, char *srcp, int copy_len, int pad)
{
	unsigned long fixup_copy_count;
	int i, npages, curlen;
	char *destp;
	struct page **ppages;
	int page_base;

	/* The head iovec is redirected to the RPC reply message
	 * in the receive buffer, to avoid a memcopy.
	 */
	rqst->rq_rcv_buf.head[0].iov_base = srcp;
	rqst->rq_private_buf.head[0].iov_base = srcp;

	/* The contents of the receive buffer that follow
	 * head.iov_len bytes are copied into the page list.
	 */
	curlen = rqst->rq_rcv_buf.head[0].iov_len;
	if (curlen > copy_len)
		curlen = copy_len;
	FUNC6(rqst, copy_len, curlen);
	srcp += curlen;
	copy_len -= curlen;

	ppages = rqst->rq_rcv_buf.pages +
		(rqst->rq_rcv_buf.page_base >> PAGE_SHIFT);
	page_base = FUNC5(rqst->rq_rcv_buf.page_base);
	fixup_copy_count = 0;
	if (copy_len && rqst->rq_rcv_buf.page_len) {
		int pagelist_len;

		pagelist_len = rqst->rq_rcv_buf.page_len;
		if (pagelist_len > copy_len)
			pagelist_len = copy_len;
		npages = FUNC0(page_base + pagelist_len) >> PAGE_SHIFT;
		for (i = 0; i < npages; i++) {
			curlen = PAGE_SIZE - page_base;
			if (curlen > pagelist_len)
				curlen = pagelist_len;

			FUNC7(rqst, i, srcp,
						copy_len, curlen);
			destp = FUNC2(ppages[i]);
			FUNC4(destp + page_base, srcp, curlen);
			FUNC1(ppages[i]);
			FUNC3(destp);
			srcp += curlen;
			copy_len -= curlen;
			fixup_copy_count += curlen;
			pagelist_len -= curlen;
			if (!pagelist_len)
				break;
			page_base = 0;
		}

		/* Implicit padding for the last segment in a Write
		 * chunk is inserted inline at the front of the tail
		 * iovec. The upper layer ignores the content of
		 * the pad. Simply ensure inline content in the tail
		 * that follows the Write chunk is properly aligned.
		 */
		if (pad)
			srcp -= pad;
	}

	/* The tail iovec is redirected to the remaining data
	 * in the receive buffer, to avoid a memcopy.
	 */
	if (copy_len || pad) {
		rqst->rq_rcv_buf.tail[0].iov_base = srcp;
		rqst->rq_private_buf.tail[0].iov_base = srcp;
	}

	return fixup_copy_count;
}