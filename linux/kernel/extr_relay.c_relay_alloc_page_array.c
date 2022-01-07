
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 size_t const PAGE_SIZE ;
 struct page** kzalloc (size_t const,int ) ;
 struct page** vzalloc (size_t const) ;

__attribute__((used)) static struct page **relay_alloc_page_array(unsigned int n_pages)
{
 const size_t pa_size = n_pages * sizeof(struct page *);
 if (pa_size > PAGE_SIZE)
  return vzalloc(pa_size);
 return kzalloc(pa_size, GFP_KERNEL);
}
