
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int callback_wq ;

int nfsd4_create_callback_queue(void)
{
 callback_wq = alloc_ordered_workqueue("nfsd4_callbacks", 0);
 if (!callback_wq)
  return -ENOMEM;
 return 0;
}
