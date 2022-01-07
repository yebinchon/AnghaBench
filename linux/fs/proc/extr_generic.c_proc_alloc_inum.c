
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 unsigned int PROC_DYNAMIC_FIRST ;
 scalar_t__ UINT_MAX ;
 int ida_simple_get (int *,int ,scalar_t__,int ) ;
 int proc_inum_ida ;

int proc_alloc_inum(unsigned int *inum)
{
 int i;

 i = ida_simple_get(&proc_inum_ida, 0, UINT_MAX - PROC_DYNAMIC_FIRST + 1,
      GFP_KERNEL);
 if (i < 0)
  return i;

 *inum = PROC_DYNAMIC_FIRST + (unsigned int)i;
 return 0;
}
