
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {int flags; int page_base; scalar_t__* pages; TYPE_1__* bvec; } ;
typedef int gfp_t ;
struct TYPE_2__ {scalar_t__ bv_page; } ;


 int PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int XDRBUF_SPARSE_PAGES ;
 scalar_t__ alloc_page (int ) ;

__attribute__((used)) static size_t
xs_alloc_sparse_pages(struct xdr_buf *buf, size_t want, gfp_t gfp)
{
 size_t i,n;

 if (!want || !(buf->flags & XDRBUF_SPARSE_PAGES))
  return want;
 n = (buf->page_base + want + PAGE_SIZE - 1) >> PAGE_SHIFT;
 for (i = 0; i < n; i++) {
  if (buf->pages[i])
   continue;
  buf->bvec[i].bv_page = buf->pages[i] = alloc_page(gfp);
  if (!buf->pages[i]) {
   i *= PAGE_SIZE;
   return i > buf->page_base ? i - buf->page_base : 0;
  }
 }
 return want;
}
