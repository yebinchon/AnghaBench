#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xdr_buf {int page_len; int page_base; TYPE_2__* tail; struct page** pages; TYPE_1__* head; } ;
struct rpcrdma_xprt {int dummy; } ;
struct TYPE_6__ {unsigned int num_sge; } ;
struct rpcrdma_sendctx {scalar_t__ sc_unmap_count; TYPE_3__ sc_wr; int /*<<< orphan*/  sc_device; struct ib_sge* sc_sges; } ;
struct rpcrdma_req {int /*<<< orphan*/  rl_kref; struct rpcrdma_regbuf* rl_sendbuf; struct rpcrdma_sendctx* rl_sendctx; } ;
struct rpcrdma_regbuf {int dummy; } ;
struct page {int dummy; } ;
struct ib_sge {unsigned int length; void* addr; void* lkey; } ;
typedef  enum rpcrdma_chunktype { ____Placeholder_rpcrdma_chunktype } rpcrdma_chunktype ;
struct TYPE_5__ {unsigned int iov_len; int iov_base; } ;
struct TYPE_4__ {unsigned int iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int RPCRDMA_MAX_SEND_SGES ; 
 void* FUNC0 (int /*<<< orphan*/ ,struct page*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 void* FUNC7 (struct rpcrdma_regbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpcrdma_regbuf*) ; 
 void* FUNC9 (struct rpcrdma_regbuf*) ; 
 int rpcrdma_readch ; 
 int /*<<< orphan*/  FUNC10 (struct rpcrdma_xprt*,struct rpcrdma_regbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct rpcrdma_sendctx*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  u32 ; 
 struct page* FUNC13 (int) ; 

__attribute__((used)) static bool FUNC14(struct rpcrdma_xprt *r_xprt,
				     struct rpcrdma_req *req,
				     struct xdr_buf *xdr,
				     enum rpcrdma_chunktype rtype)
{
	struct rpcrdma_sendctx *sc = req->rl_sendctx;
	unsigned int sge_no, page_base, len, remaining;
	struct rpcrdma_regbuf *rb = req->rl_sendbuf;
	struct ib_sge *sge = sc->sc_sges;
	struct page *page, **ppages;

	/* The head iovec is straightforward, as it is already
	 * DMA-mapped. Sync the content that has changed.
	 */
	if (!FUNC10(r_xprt, rb))
		goto out_regbuf;
	sc->sc_device = FUNC8(rb);
	sge_no = 1;
	sge[sge_no].addr = FUNC7(rb);
	sge[sge_no].length = xdr->head[0].iov_len;
	sge[sge_no].lkey = FUNC9(rb);
	FUNC2(FUNC8(rb), sge[sge_no].addr,
				      sge[sge_no].length, DMA_TO_DEVICE);

	/* If there is a Read chunk, the page list is being handled
	 * via explicit RDMA, and thus is skipped here. However, the
	 * tail iovec may include an XDR pad for the page list, as
	 * well as additional content, and may not reside in the
	 * same page as the head iovec.
	 */
	if (rtype == rpcrdma_readch) {
		len = xdr->tail[0].iov_len;

		/* Do not include the tail if it is only an XDR pad */
		if (len < 4)
			goto out;

		page = FUNC13(xdr->tail[0].iov_base);
		page_base = FUNC5(xdr->tail[0].iov_base);

		/* If the content in the page list is an odd length,
		 * xdr_write_pages() has added a pad at the beginning
		 * of the tail iovec. Force the tail's non-pad content
		 * to land at the next XDR position in the Send message.
		 */
		page_base += len & 3;
		len -= len & 3;
		goto map_tail;
	}

	/* If there is a page list present, temporarily DMA map
	 * and prepare an SGE for each page to be sent.
	 */
	if (xdr->page_len) {
		ppages = xdr->pages + (xdr->page_base >> PAGE_SHIFT);
		page_base = FUNC5(xdr->page_base);
		remaining = xdr->page_len;
		while (remaining) {
			sge_no++;
			if (sge_no > RPCRDMA_MAX_SEND_SGES - 2)
				goto out_mapping_overflow;

			len = FUNC4(u32, PAGE_SIZE - page_base, remaining);
			sge[sge_no].addr =
				FUNC0(FUNC8(rb), *ppages,
						page_base, len, DMA_TO_DEVICE);
			if (FUNC1(FUNC8(rb),
						 sge[sge_no].addr))
				goto out_mapping_err;
			sge[sge_no].length = len;
			sge[sge_no].lkey = FUNC9(rb);

			sc->sc_unmap_count++;
			ppages++;
			remaining -= len;
			page_base = 0;
		}
	}

	/* The tail iovec is not always constructed in the same
	 * page where the head iovec resides (see, for example,
	 * gss_wrap_req_priv). To neatly accommodate that case,
	 * DMA map it separately.
	 */
	if (xdr->tail[0].iov_len) {
		page = FUNC13(xdr->tail[0].iov_base);
		page_base = FUNC5(xdr->tail[0].iov_base);
		len = xdr->tail[0].iov_len;

map_tail:
		sge_no++;
		sge[sge_no].addr =
			FUNC0(FUNC8(rb), page, page_base, len,
					DMA_TO_DEVICE);
		if (FUNC1(FUNC8(rb), sge[sge_no].addr))
			goto out_mapping_err;
		sge[sge_no].length = len;
		sge[sge_no].lkey = FUNC9(rb);
		sc->sc_unmap_count++;
	}

out:
	sc->sc_wr.num_sge += sge_no;
	if (sc->sc_unmap_count)
		FUNC3(&req->rl_kref);
	return true;

out_regbuf:
	FUNC6("rpcrdma: failed to DMA map a Send buffer\n");
	return false;

out_mapping_overflow:
	FUNC11(sc);
	FUNC6("rpcrdma: too many Send SGEs (%u)\n", sge_no);
	return false;

out_mapping_err:
	FUNC11(sc);
	FUNC12(sge[sge_no].addr);
	return false;
}