
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {unsigned long page_base; unsigned int page_len; TYPE_1__* tail; } ;
struct svcxprt_rdma {int sc_max_send_sges; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ iov_len; } ;


 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ min_t (int ,scalar_t__,unsigned int) ;
 int u32 ;

__attribute__((used)) static bool svc_rdma_pull_up_needed(struct svcxprt_rdma *rdma,
        struct xdr_buf *xdr,
        __be32 *wr_lst)
{
 int elements;


 elements = 1;


 if (!wr_lst) {
  unsigned int remaining;
  unsigned long pageoff;

  pageoff = xdr->page_base & ~PAGE_MASK;
  remaining = xdr->page_len;
  while (remaining) {
   ++elements;
   remaining -= min_t(u32, PAGE_SIZE - pageoff,
        remaining);
   pageoff = 0;
  }
 }


 if (xdr->tail[0].iov_len)
  ++elements;


 return elements >= rdma->sc_max_send_sges;
}
