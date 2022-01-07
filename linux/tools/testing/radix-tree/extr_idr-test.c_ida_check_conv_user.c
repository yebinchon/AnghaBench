
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITS_PER_XA_VALUE ;
 int DEFINE_IDA (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 unsigned long IDA_BITMAP_BITS ;
 int IDA_BUG_ON (int *,int) ;
 int ida ;
 int ida_alloc (int *,int ) ;
 int ida_destroy (int *) ;

void ida_check_conv_user(void)
{
 DEFINE_IDA(ida);
 unsigned long i;

 for (i = 0; i < 1000000; i++) {
  int id = ida_alloc(&ida, GFP_NOWAIT);
  if (id == -ENOMEM) {
   IDA_BUG_ON(&ida, ((i % IDA_BITMAP_BITS) !=
       BITS_PER_XA_VALUE) &&
      ((i % IDA_BITMAP_BITS) != 0));
   id = ida_alloc(&ida, GFP_KERNEL);
  } else {
   IDA_BUG_ON(&ida, (i % IDA_BITMAP_BITS) ==
     BITS_PER_XA_VALUE);
  }
  IDA_BUG_ON(&ida, id != i);
 }
 ida_destroy(&ida);
}
