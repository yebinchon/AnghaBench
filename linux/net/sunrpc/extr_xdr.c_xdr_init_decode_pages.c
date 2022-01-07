
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct xdr_buf {unsigned int page_len; unsigned int buflen; unsigned int len; struct page** pages; } ;
struct page {int dummy; } ;


 int memset (struct xdr_buf*,int ,int) ;
 int xdr_init_decode (struct xdr_stream*,struct xdr_buf*,int *,int *) ;

void xdr_init_decode_pages(struct xdr_stream *xdr, struct xdr_buf *buf,
      struct page **pages, unsigned int len)
{
 memset(buf, 0, sizeof(*buf));
 buf->pages = pages;
 buf->page_len = len;
 buf->buflen = len;
 buf->len = len;
 xdr_init_decode(xdr, buf, ((void*)0), ((void*)0));
}
