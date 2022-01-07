
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int cl_cb_null; int cl_flags; } ;


 int NFSD4_CLIENT_CB_KILL ;
 int callback_wq ;
 int flush_workqueue (int ) ;
 int nfsd4_run_cb (int *) ;
 int set_bit (int ,int *) ;

void nfsd4_shutdown_callback(struct nfs4_client *clp)
{
 set_bit(NFSD4_CLIENT_CB_KILL, &clp->cl_flags);





 nfsd4_run_cb(&clp->cl_cb_null);
 flush_workqueue(callback_wq);
}
