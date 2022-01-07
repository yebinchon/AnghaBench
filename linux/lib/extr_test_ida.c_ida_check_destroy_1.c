
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;


 int GFP_KERNEL ;
 int IDA_BUG_ON (struct ida*,int) ;
 unsigned int ida_alloc_min (struct ida*,unsigned int,int ) ;
 int ida_destroy (struct ida*) ;
 int ida_is_empty (struct ida*) ;

__attribute__((used)) static void ida_check_destroy_1(struct ida *ida, unsigned int base)
{
 IDA_BUG_ON(ida, ida_alloc_min(ida, base, GFP_KERNEL) != base);
 IDA_BUG_ON(ida, ida_is_empty(ida));
 ida_destroy(ida);
 IDA_BUG_ON(ida, !ida_is_empty(ida));
}
