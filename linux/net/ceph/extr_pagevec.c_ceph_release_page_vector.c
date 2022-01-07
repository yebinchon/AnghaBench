
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __free_pages (struct page*,int ) ;
 int kfree (struct page**) ;

void ceph_release_page_vector(struct page **pages, int num_pages)
{
 int i;

 for (i = 0; i < num_pages; i++)
  __free_pages(pages[i], 0);
 kfree(pages);
}
