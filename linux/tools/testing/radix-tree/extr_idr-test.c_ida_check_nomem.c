
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_IDA (int ) ;
 int ENOMEM ;
 int GFP_NOWAIT ;
 int IDA_BUG_ON (int *,int) ;
 int ida ;
 int ida_alloc_min (int *,unsigned long,int ) ;
 int ida_is_empty (int *) ;

void ida_check_nomem(void)
{
 DEFINE_IDA(ida);
 int id;

 id = ida_alloc_min(&ida, 256, GFP_NOWAIT);
 IDA_BUG_ON(&ida, id != -ENOMEM);
 id = ida_alloc_min(&ida, 1UL << 30, GFP_NOWAIT);
 IDA_BUG_ON(&ida, id != -ENOMEM);
 IDA_BUG_ON(&ida, !ida_is_empty(&ida));
}
