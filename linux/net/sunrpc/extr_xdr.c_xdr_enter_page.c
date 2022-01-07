
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;


 unsigned int xdr_align_pages (struct xdr_stream*,unsigned int) ;
 int xdr_set_page_base (struct xdr_stream*,int ,unsigned int) ;

void xdr_enter_page(struct xdr_stream *xdr, unsigned int len)
{
 len = xdr_align_pages(xdr, len);




 if (len != 0)
  xdr_set_page_base(xdr, 0, len);
}
