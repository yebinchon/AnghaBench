
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {unsigned int nwords; int * page_ptr; int * end; int * p; struct kvec* iov; struct xdr_buf* buf; } ;
struct xdr_buf {struct kvec* tail; } ;
struct kvec {unsigned int iov_len; scalar_t__ iov_base; } ;
typedef int __be32 ;


 void* XDR_QUADLEN (unsigned int) ;
 unsigned int xdr_align_pages (struct xdr_stream*,unsigned int) ;

unsigned int xdr_read_pages(struct xdr_stream *xdr, unsigned int len)
{
 struct xdr_buf *buf = xdr->buf;
 struct kvec *iov;
 unsigned int nwords;
 unsigned int end;
 unsigned int padding;

 len = xdr_align_pages(xdr, len);
 if (len == 0)
  return 0;
 nwords = XDR_QUADLEN(len);
 padding = (nwords << 2) - len;
 xdr->iov = iov = buf->tail;

 end = ((xdr->nwords - nwords) << 2) + padding;
 if (end > iov->iov_len)
  end = iov->iov_len;





 xdr->p = (__be32 *)((char *)iov->iov_base + padding);
 xdr->end = (__be32 *)((char *)iov->iov_base + end);
 xdr->page_ptr = ((void*)0);
 xdr->nwords = XDR_QUADLEN(end - padding);
 return len;
}
