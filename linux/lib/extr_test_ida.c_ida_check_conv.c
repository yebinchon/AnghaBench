
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;


 unsigned long BITS_PER_LONG ;
 int GFP_KERNEL ;
 int IDA_BITMAP_BITS ;
 int IDA_BUG_ON (struct ida*,int) ;
 unsigned long ida_alloc (struct ida*,int ) ;
 unsigned long ida_alloc_min (struct ida*,unsigned long,int ) ;
 int ida_free (struct ida*,unsigned long) ;
 int ida_is_empty (struct ida*) ;

__attribute__((used)) static void ida_check_conv(struct ida *ida)
{
 unsigned long i;

 for (i = 0; i < IDA_BITMAP_BITS * 2; i += IDA_BITMAP_BITS) {
  IDA_BUG_ON(ida, ida_alloc_min(ida, i + 1, GFP_KERNEL) != i + 1);
  IDA_BUG_ON(ida, ida_alloc_min(ida, i + BITS_PER_LONG,
     GFP_KERNEL) != i + BITS_PER_LONG);
  ida_free(ida, i + 1);
  ida_free(ida, i + BITS_PER_LONG);
  IDA_BUG_ON(ida, !ida_is_empty(ida));
 }

 for (i = 0; i < IDA_BITMAP_BITS * 2; i++)
  IDA_BUG_ON(ida, ida_alloc(ida, GFP_KERNEL) != i);
 for (i = IDA_BITMAP_BITS * 2; i > 0; i--)
  ida_free(ida, i - 1);
 IDA_BUG_ON(ida, !ida_is_empty(ida));

 for (i = 0; i < IDA_BITMAP_BITS + BITS_PER_LONG - 4; i++)
  IDA_BUG_ON(ida, ida_alloc(ida, GFP_KERNEL) != i);
 for (i = IDA_BITMAP_BITS + BITS_PER_LONG - 4; i > 0; i--)
  ida_free(ida, i - 1);
 IDA_BUG_ON(ida, !ida_is_empty(ida));
}
