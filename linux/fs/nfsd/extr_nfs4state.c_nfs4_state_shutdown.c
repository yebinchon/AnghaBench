
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int laundry_wq ;
 int nfsd4_destroy_callback_queue () ;

void
nfs4_state_shutdown(void)
{
 destroy_workqueue(laundry_wq);
 nfsd4_destroy_callback_queue();
}
