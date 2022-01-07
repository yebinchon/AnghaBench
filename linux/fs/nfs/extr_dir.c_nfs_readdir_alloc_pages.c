
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct page* alloc_page (int ) ;
 int nfs_readdir_free_pages (struct page**,unsigned int) ;

__attribute__((used)) static
int nfs_readdir_alloc_pages(struct page **pages, unsigned int npages)
{
 unsigned int i;

 for (i = 0; i < npages; i++) {
  struct page *page = alloc_page(GFP_KERNEL);
  if (page == ((void*)0))
   goto out_freepages;
  pages[i] = page;
 }
 return 0;

out_freepages:
 nfs_readdir_free_pages(pages, i);
 return -ENOMEM;
}
