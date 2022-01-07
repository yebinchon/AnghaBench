
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callback_wq ;
 int destroy_workqueue (int ) ;

void nfsd4_destroy_callback_queue(void)
{
 destroy_workqueue(callback_wq);
}
