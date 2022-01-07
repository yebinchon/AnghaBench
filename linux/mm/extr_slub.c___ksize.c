
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int slab_cache; } ;


 int PageCompound (struct page*) ;
 int PageSlab (struct page*) ;
 int WARN_ON (int) ;
 void const* ZERO_SIZE_PTR ;
 size_t page_size (struct page*) ;
 size_t slab_ksize (int ) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_head_page (void const*) ;

size_t __ksize(const void *object)
{
 struct page *page;

 if (unlikely(object == ZERO_SIZE_PTR))
  return 0;

 page = virt_to_head_page(object);

 if (unlikely(!PageSlab(page))) {
  WARN_ON(!PageCompound(page));
  return page_size(page);
 }

 return slab_ksize(page->slab_cache);
}
