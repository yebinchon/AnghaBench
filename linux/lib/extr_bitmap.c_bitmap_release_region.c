
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_OP_RELEASE ;
 int __reg_op (unsigned long*,unsigned int,int,int ) ;

void bitmap_release_region(unsigned long *bitmap, unsigned int pos, int order)
{
 __reg_op(bitmap, pos, order, REG_OP_RELEASE);
}
