
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_buf {int page_len; int page_base; TYPE_2__* tail; struct page** pages; TYPE_1__* head; } ;
struct rpcrdma_xprt {int dummy; } ;
struct TYPE_6__ {unsigned int num_sge; } ;
struct rpcrdma_sendctx {scalar_t__ sc_unmap_count; TYPE_3__ sc_wr; int sc_device; struct ib_sge* sc_sges; } ;
struct rpcrdma_req {int rl_kref; struct rpcrdma_regbuf* rl_sendbuf; struct rpcrdma_sendctx* rl_sendctx; } ;
struct rpcrdma_regbuf {int dummy; } ;
struct page {int dummy; } ;
struct ib_sge {unsigned int length; void* addr; void* lkey; } ;
typedef enum rpcrdma_chunktype { ____Placeholder_rpcrdma_chunktype } rpcrdma_chunktype ;
struct TYPE_5__ {unsigned int iov_len; int iov_base; } ;
struct TYPE_4__ {unsigned int iov_len; } ;


 int DMA_TO_DEVICE ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int RPCRDMA_MAX_SEND_SGES ;
 void* ib_dma_map_page (int ,struct page*,unsigned int,unsigned int,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,void*) ;
 int ib_dma_sync_single_for_device (int ,void*,unsigned int,int ) ;
 int kref_get (int *) ;
 unsigned int min_t (int ,scalar_t__,unsigned int) ;
 unsigned int offset_in_page (int) ;
 int pr_err (char*,...) ;
 void* rdmab_addr (struct rpcrdma_regbuf*) ;
 int rdmab_device (struct rpcrdma_regbuf*) ;
 void* rdmab_lkey (struct rpcrdma_regbuf*) ;
 int rpcrdma_readch ;
 int rpcrdma_regbuf_dma_map (struct rpcrdma_xprt*,struct rpcrdma_regbuf*) ;
 int rpcrdma_sendctx_unmap (struct rpcrdma_sendctx*) ;
 int trace_xprtrdma_dma_maperr (void*) ;
 int u32 ;
 struct page* virt_to_page (int) ;

__attribute__((used)) static bool rpcrdma_prepare_msg_sges(struct rpcrdma_xprt *r_xprt,
         struct rpcrdma_req *req,
         struct xdr_buf *xdr,
         enum rpcrdma_chunktype rtype)
{
 struct rpcrdma_sendctx *sc = req->rl_sendctx;
 unsigned int sge_no, page_base, len, remaining;
 struct rpcrdma_regbuf *rb = req->rl_sendbuf;
 struct ib_sge *sge = sc->sc_sges;
 struct page *page, **ppages;




 if (!rpcrdma_regbuf_dma_map(r_xprt, rb))
  goto out_regbuf;
 sc->sc_device = rdmab_device(rb);
 sge_no = 1;
 sge[sge_no].addr = rdmab_addr(rb);
 sge[sge_no].length = xdr->head[0].iov_len;
 sge[sge_no].lkey = rdmab_lkey(rb);
 ib_dma_sync_single_for_device(rdmab_device(rb), sge[sge_no].addr,
          sge[sge_no].length, DMA_TO_DEVICE);







 if (rtype == rpcrdma_readch) {
  len = xdr->tail[0].iov_len;


  if (len < 4)
   goto out;

  page = virt_to_page(xdr->tail[0].iov_base);
  page_base = offset_in_page(xdr->tail[0].iov_base);






  page_base += len & 3;
  len -= len & 3;
  goto map_tail;
 }




 if (xdr->page_len) {
  ppages = xdr->pages + (xdr->page_base >> PAGE_SHIFT);
  page_base = offset_in_page(xdr->page_base);
  remaining = xdr->page_len;
  while (remaining) {
   sge_no++;
   if (sge_no > RPCRDMA_MAX_SEND_SGES - 2)
    goto out_mapping_overflow;

   len = min_t(u32, PAGE_SIZE - page_base, remaining);
   sge[sge_no].addr =
    ib_dma_map_page(rdmab_device(rb), *ppages,
      page_base, len, DMA_TO_DEVICE);
   if (ib_dma_mapping_error(rdmab_device(rb),
       sge[sge_no].addr))
    goto out_mapping_err;
   sge[sge_no].length = len;
   sge[sge_no].lkey = rdmab_lkey(rb);

   sc->sc_unmap_count++;
   ppages++;
   remaining -= len;
   page_base = 0;
  }
 }






 if (xdr->tail[0].iov_len) {
  page = virt_to_page(xdr->tail[0].iov_base);
  page_base = offset_in_page(xdr->tail[0].iov_base);
  len = xdr->tail[0].iov_len;

map_tail:
  sge_no++;
  sge[sge_no].addr =
   ib_dma_map_page(rdmab_device(rb), page, page_base, len,
     DMA_TO_DEVICE);
  if (ib_dma_mapping_error(rdmab_device(rb), sge[sge_no].addr))
   goto out_mapping_err;
  sge[sge_no].length = len;
  sge[sge_no].lkey = rdmab_lkey(rb);
  sc->sc_unmap_count++;
 }

out:
 sc->sc_wr.num_sge += sge_no;
 if (sc->sc_unmap_count)
  kref_get(&req->rl_kref);
 return 1;

out_regbuf:
 pr_err("rpcrdma: failed to DMA map a Send buffer\n");
 return 0;

out_mapping_overflow:
 rpcrdma_sendctx_unmap(sc);
 pr_err("rpcrdma: too many Send SGEs (%u)\n", sge_no);
 return 0;

out_mapping_err:
 rpcrdma_sendctx_unmap(sc);
 trace_xprtrdma_dma_maperr(sge[sge_no].addr);
 return 0;
}
