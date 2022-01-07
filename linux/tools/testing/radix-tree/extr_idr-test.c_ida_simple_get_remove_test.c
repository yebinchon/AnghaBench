
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_IDA (int ) ;
 int GFP_KERNEL ;
 int assert (int) ;
 int ida ;
 int ida_destroy (int *) ;
 int ida_is_empty (int *) ;
 unsigned long ida_simple_get (int *,int,int,int ) ;
 int ida_simple_remove (int *,unsigned long) ;

void ida_simple_get_remove_test(void)
{
 DEFINE_IDA(ida);
 unsigned long i;

 for (i = 0; i < 10000; i++) {
  assert(ida_simple_get(&ida, 0, 20000, GFP_KERNEL) == i);
 }
 assert(ida_simple_get(&ida, 5, 30, GFP_KERNEL) < 0);

 for (i = 0; i < 10000; i++) {
  ida_simple_remove(&ida, i);
 }
 assert(ida_is_empty(&ida));

 ida_destroy(&ida);
}
