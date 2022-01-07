
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_state; } ;


 int NFS4CLNT_CHECK_LEASE ;
 int NFS4CLNT_LEASE_EXPIRED ;
 int NFS4CLNT_RECLAIM_NOGRACE ;
 int NFS4CLNT_RECLAIM_REBOOT ;
 int NFS4CLNT_SERVER_SCOPE_MISMATCH ;
 int clear_bit (int ,int *) ;
 int nfs4_establish_lease (struct nfs_client*) ;
 int nfs4_handle_reclaim_lease_error (struct nfs_client*,int) ;
 int nfs4_state_start_reclaim_nograce (struct nfs_client*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int nfs4_reclaim_lease(struct nfs_client *clp)
{
 int status;

 status = nfs4_establish_lease(clp);
 if (status < 0)
  return nfs4_handle_reclaim_lease_error(clp, status);
 if (test_and_clear_bit(NFS4CLNT_SERVER_SCOPE_MISMATCH, &clp->cl_state))
  nfs4_state_start_reclaim_nograce(clp);
 if (!test_bit(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state))
  set_bit(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state);
 clear_bit(NFS4CLNT_CHECK_LEASE, &clp->cl_state);
 clear_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state);
 return 0;
}
