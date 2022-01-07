
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {TYPE_1__* bvec; int * pages; } ;
typedef int gfp_t ;
struct TYPE_2__ {scalar_t__ bv_offset; int bv_len; int bv_page; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 TYPE_1__* kmalloc_array (size_t,int,int ) ;
 size_t xdr_buf_pagecount (struct xdr_buf*) ;

int
xdr_alloc_bvec(struct xdr_buf *buf, gfp_t gfp)
{
 size_t i, n = xdr_buf_pagecount(buf);

 if (n != 0 && buf->bvec == ((void*)0)) {
  buf->bvec = kmalloc_array(n, sizeof(buf->bvec[0]), gfp);
  if (!buf->bvec)
   return -ENOMEM;
  for (i = 0; i < n; i++) {
   buf->bvec[i].bv_page = buf->pages[i];
   buf->bvec[i].bv_len = PAGE_SIZE;
   buf->bvec[i].bv_offset = 0;
  }
 }
 return 0;
}
