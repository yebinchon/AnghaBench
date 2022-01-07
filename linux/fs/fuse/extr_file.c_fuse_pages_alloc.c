
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct fuse_page_desc {int dummy; } ;
typedef int gfp_t ;


 struct page** kzalloc (unsigned int,int ) ;

__attribute__((used)) static struct page **fuse_pages_alloc(unsigned int npages, gfp_t flags,
          struct fuse_page_desc **desc)
{
 struct page **pages;

 pages = kzalloc(npages * (sizeof(struct page *) +
      sizeof(struct fuse_page_desc)), flags);
 *desc = (void *) (pages + npages);

 return pages;
}
