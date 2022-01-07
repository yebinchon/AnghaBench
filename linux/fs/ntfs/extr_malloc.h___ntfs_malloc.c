
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int BUG_ON (int) ;
 int PAGE_KERNEL ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int __GFP_HIGHMEM ;
 void* __vmalloc (unsigned long,int,int ) ;
 void* kmalloc (unsigned long,int) ;
 scalar_t__ likely (int) ;
 unsigned long totalram_pages () ;

__attribute__((used)) static inline void *__ntfs_malloc(unsigned long size, gfp_t gfp_mask)
{
 if (likely(size <= PAGE_SIZE)) {
  BUG_ON(!size);

  return kmalloc(PAGE_SIZE, gfp_mask & ~__GFP_HIGHMEM);

 }
 if (likely((size >> PAGE_SHIFT) < totalram_pages()))
  return __vmalloc(size, gfp_mask, PAGE_KERNEL);
 return ((void*)0);
}
