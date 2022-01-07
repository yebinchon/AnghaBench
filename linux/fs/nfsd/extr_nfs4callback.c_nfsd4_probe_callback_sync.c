
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int dummy; } ;


 int callback_wq ;
 int flush_workqueue (int ) ;
 int nfsd4_probe_callback (struct nfs4_client*) ;

void nfsd4_probe_callback_sync(struct nfs4_client *clp)
{
 nfsd4_probe_callback(clp);
 flush_workqueue(callback_wq);
}
