
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int REG_OP_ALLOC ;
 int REG_OP_ISFREE ;
 int __reg_op (unsigned long*,unsigned int,int,int ) ;

int bitmap_find_free_region(unsigned long *bitmap, unsigned int bits, int order)
{
 unsigned int pos, end;

 for (pos = 0 ; (end = pos + (1U << order)) <= bits; pos = end) {
  if (!__reg_op(bitmap, pos, order, REG_OP_ISFREE))
   continue;
  __reg_op(bitmap, pos, order, REG_OP_ALLOC);
  return pos;
 }
 return -ENOMEM;
}
