
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;


 int GFP_KERNEL ;
 int IDA_BUG_ON (struct ida*,int) ;
 int ida_alloc (struct ida*,int ) ;
 int ida_alloc_min (struct ida*,int,int ) ;
 int ida_destroy (struct ida*) ;
 int ida_free (struct ida*,int) ;
 int ida_is_empty (struct ida*) ;

__attribute__((used)) static void ida_check_alloc(struct ida *ida)
{
 int i, id;

 for (i = 0; i < 10000; i++)
  IDA_BUG_ON(ida, ida_alloc(ida, GFP_KERNEL) != i);

 ida_free(ida, 20);
 ida_free(ida, 21);
 for (i = 0; i < 3; i++) {
  id = ida_alloc(ida, GFP_KERNEL);
  IDA_BUG_ON(ida, id < 0);
  if (i == 2)
   IDA_BUG_ON(ida, id != 10000);
 }

 for (i = 0; i < 5000; i++)
  ida_free(ida, i);

 IDA_BUG_ON(ida, ida_alloc_min(ida, 5000, GFP_KERNEL) != 10001);
 ida_destroy(ida);

 IDA_BUG_ON(ida, !ida_is_empty(ida));
}
