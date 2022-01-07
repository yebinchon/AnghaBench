
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __genradix {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 scalar_t__ PAGE_SIZE ;
 int __genradix_ptr_alloc (struct __genradix*,size_t,int ) ;

int __genradix_prealloc(struct __genradix *radix, size_t size,
   gfp_t gfp_mask)
{
 size_t offset;

 for (offset = 0; offset < size; offset += PAGE_SIZE)
  if (!__genradix_ptr_alloc(radix, offset, gfp_mask))
   return -ENOMEM;

 return 0;
}
