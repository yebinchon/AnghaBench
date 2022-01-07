
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {unsigned long cl_lease_time; unsigned long cl_last_renewal; int cl_rpcclient; int cl_lock; } ;


 int rpc_set_connect_timeout (int ,unsigned long,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs4_set_lease_period(struct nfs_client *clp,
  unsigned long lease,
  unsigned long lastrenewed)
{
 spin_lock(&clp->cl_lock);
 clp->cl_lease_time = lease;
 clp->cl_last_renewal = lastrenewed;
 spin_unlock(&clp->cl_lock);


 rpc_set_connect_timeout(clp->cl_rpcclient, lease, lease >> 1);
}
