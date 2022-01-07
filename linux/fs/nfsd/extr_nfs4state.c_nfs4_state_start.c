
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WQ_UNBOUND ;
 int * alloc_workqueue (char*,int ,int ,char*) ;
 int destroy_workqueue (int *) ;
 int * laundry_wq ;
 int nfsd4_create_callback_queue () ;
 int set_max_delegations () ;

int
nfs4_state_start(void)
{
 int ret;

 laundry_wq = alloc_workqueue("%s", WQ_UNBOUND, 0, "nfsd4");
 if (laundry_wq == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }
 ret = nfsd4_create_callback_queue();
 if (ret)
  goto out_free_laundry;

 set_max_delegations();
 return 0;

out_free_laundry:
 destroy_workqueue(laundry_wq);
out:
 return ret;
}
