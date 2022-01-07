
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int nfs_client_mark_return_all_delegations (struct nfs_client*) ;
 int nfs_delegation_run_state_manager (struct nfs_client*) ;

void nfs_expire_all_delegations(struct nfs_client *clp)
{
 nfs_client_mark_return_all_delegations(clp);
 nfs_delegation_run_state_manager(clp);
}
