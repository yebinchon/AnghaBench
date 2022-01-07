
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 struct page* alloc_page (int ) ;
 int page_address (struct page*) ;
 int xdr_buf_init (struct xdr_buf*,int ,int ) ;

__attribute__((used)) static int xprt_alloc_xdr_buf(struct xdr_buf *buf, gfp_t gfp_flags)
{
 struct page *page;

 page = alloc_page(gfp_flags);
 if (page == ((void*)0))
  return -ENOMEM;
 xdr_buf_init(buf, page_address(page), PAGE_SIZE);
 return 0;
}
