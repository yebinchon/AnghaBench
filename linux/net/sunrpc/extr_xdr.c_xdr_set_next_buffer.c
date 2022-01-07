
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {scalar_t__ iov; int nwords; scalar_t__ p; scalar_t__ end; TYPE_1__* buf; int * page_ptr; } ;
struct TYPE_2__ {scalar_t__ head; int tail; } ;


 int PAGE_SIZE ;
 int xdr_set_iov (struct xdr_stream*,int ,int) ;
 int xdr_set_next_page (struct xdr_stream*) ;
 scalar_t__ xdr_set_page_base (struct xdr_stream*,int ,int ) ;

__attribute__((used)) static bool xdr_set_next_buffer(struct xdr_stream *xdr)
{
 if (xdr->page_ptr != ((void*)0))
  xdr_set_next_page(xdr);
 else if (xdr->iov == xdr->buf->head) {
  if (xdr_set_page_base(xdr, 0, PAGE_SIZE) < 0)
   xdr_set_iov(xdr, xdr->buf->tail, xdr->nwords << 2);
 }
 return xdr->p != xdr->end;
}
