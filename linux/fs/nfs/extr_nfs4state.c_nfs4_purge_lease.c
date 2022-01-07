
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_state; } ;


 int NFS4CLNT_LEASE_EXPIRED ;
 int NFS4CLNT_PURGE_STATE ;
 int clear_bit (int ,int *) ;
 int nfs4_establish_lease (struct nfs_client*) ;
 int nfs4_handle_reclaim_lease_error (struct nfs_client*,int) ;
 int nfs4_state_start_reclaim_nograce (struct nfs_client*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int nfs4_purge_lease(struct nfs_client *clp)
{
 int status;

 status = nfs4_establish_lease(clp);
 if (status < 0)
  return nfs4_handle_reclaim_lease_error(clp, status);
 clear_bit(NFS4CLNT_PURGE_STATE, &clp->cl_state);
 set_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state);
 nfs4_state_start_reclaim_nograce(clp);
 return 0;
}
