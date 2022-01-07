
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_state; } ;


 int EIO ;
 int NFS4CLNT_CHECK_LEASE ;
 int NFS4CLNT_LEASE_EXPIRED ;
 unsigned int NFS4_MAX_LOOP_ON_RECOVER ;
 int nfs4_schedule_state_manager (struct nfs_client*) ;
 int nfs4_wait_clnt_recover (struct nfs_client*) ;
 int test_bit (int ,int *) ;

int nfs4_client_recover_expired_lease(struct nfs_client *clp)
{
 unsigned int loop;
 int ret;

 for (loop = NFS4_MAX_LOOP_ON_RECOVER; loop != 0; loop--) {
  ret = nfs4_wait_clnt_recover(clp);
  if (ret != 0)
   break;
  if (!test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state) &&
      !test_bit(NFS4CLNT_CHECK_LEASE,&clp->cl_state))
   break;
  nfs4_schedule_state_manager(clp);
  ret = -EIO;
 }
 return ret;
}
