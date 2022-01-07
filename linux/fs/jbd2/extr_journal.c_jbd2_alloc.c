
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int BUG_ON (unsigned long) ;
 size_t PAGE_SIZE ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int get_order (size_t) ;
 int get_slab (size_t) ;
 void* kmem_cache_alloc (int ,int ) ;

void *jbd2_alloc(size_t size, gfp_t flags)
{
 void *ptr;

 BUG_ON(size & (size-1));

 if (size < PAGE_SIZE)
  ptr = kmem_cache_alloc(get_slab(size), flags);
 else
  ptr = (void *)__get_free_pages(flags, get_order(size));



 BUG_ON(((unsigned long) ptr) & (size-1));

 return ptr;
}
