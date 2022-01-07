
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;


 int GFP_KERNEL ;
 unsigned long IDA_BITMAP_BITS ;
 int IDA_BUG_ON (struct ida*,int) ;
 scalar_t__ ida_alloc (struct ida*,int ) ;
 unsigned int ida_alloc_min (struct ida*,unsigned int,int ) ;
 int ida_destroy (struct ida*) ;
 int ida_free (struct ida*,int ) ;
 int ida_is_empty (struct ida*) ;

__attribute__((used)) static void ida_check_leaf(struct ida *ida, unsigned int base)
{
 unsigned long i;

 for (i = 0; i < IDA_BITMAP_BITS; i++) {
  IDA_BUG_ON(ida, ida_alloc_min(ida, base, GFP_KERNEL) !=
    base + i);
 }

 ida_destroy(ida);
 IDA_BUG_ON(ida, !ida_is_empty(ida));

 IDA_BUG_ON(ida, ida_alloc(ida, GFP_KERNEL) != 0);
 IDA_BUG_ON(ida, ida_is_empty(ida));
 ida_free(ida, 0);
 IDA_BUG_ON(ida, !ida_is_empty(ida));
}
