
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int nfs4_schedule_state_manager (struct nfs_client*) ;
 int nfs_mark_test_expired_all_delegations (struct nfs_client*) ;

void nfs_test_expired_all_delegations(struct nfs_client *clp)
{
 nfs_mark_test_expired_all_delegations(clp);
 nfs4_schedule_state_manager(clp);
}
