
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {int page_len; int page_base; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;

size_t
xdr_buf_pagecount(struct xdr_buf *buf)
{
 if (!buf->page_len)
  return 0;
 return (buf->page_base + buf->page_len + PAGE_SIZE - 1) >> PAGE_SHIFT;
}
