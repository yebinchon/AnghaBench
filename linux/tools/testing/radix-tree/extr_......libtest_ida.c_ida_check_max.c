
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;


 unsigned long ENOSPC ;
 int GFP_KERNEL ;
 int IDA_BUG_ON (struct ida*,int) ;
 unsigned long ida_alloc_min (struct ida*,unsigned long,int ) ;
 int ida_destroy (struct ida*) ;
 int ida_is_empty (struct ida*) ;

__attribute__((used)) static void ida_check_max(struct ida *ida)
{
 unsigned long i, j;

 for (j = 1; j < 65537; j *= 2) {
  unsigned long base = (1UL << 31) - j;
  for (i = 0; i < j; i++) {
   IDA_BUG_ON(ida, ida_alloc_min(ida, base, GFP_KERNEL) !=
     base + i);
  }
  IDA_BUG_ON(ida, ida_alloc_min(ida, base, GFP_KERNEL) !=
    -ENOSPC);
  ida_destroy(ida);
  IDA_BUG_ON(ida, !ida_is_empty(ida));
 }
}
