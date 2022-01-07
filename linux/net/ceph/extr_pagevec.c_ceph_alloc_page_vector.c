
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct page** ERR_PTR (int ) ;
 struct page* __page_cache_alloc (int ) ;
 int ceph_release_page_vector (struct page**,int) ;
 struct page** kmalloc_array (int,int,int ) ;

struct page **ceph_alloc_page_vector(int num_pages, gfp_t flags)
{
 struct page **pages;
 int i;

 pages = kmalloc_array(num_pages, sizeof(*pages), flags);
 if (!pages)
  return ERR_PTR(-ENOMEM);
 for (i = 0; i < num_pages; i++) {
  pages[i] = __page_cache_alloc(flags);
  if (pages[i] == ((void*)0)) {
   ceph_release_page_vector(pages, i);
   return ERR_PTR(-ENOMEM);
  }
 }
 return pages;
}
