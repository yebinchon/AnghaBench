
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fsinfo {int lease_time; } ;
struct nfs_client {int cl_res_state; } ;


 int HZ ;
 int NFS_CS_CHECK_LEASE_TIME ;
 unsigned long jiffies ;
 int nfs4_proc_get_lease_time (struct nfs_client*,struct nfs_fsinfo*) ;
 int nfs4_schedule_state_renewal (struct nfs_client*) ;
 int nfs4_set_lease_period (struct nfs_client*,int,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int nfs4_setup_state_renewal(struct nfs_client *clp)
{
 int status;
 struct nfs_fsinfo fsinfo;
 unsigned long now;

 if (!test_bit(NFS_CS_CHECK_LEASE_TIME, &clp->cl_res_state)) {
  nfs4_schedule_state_renewal(clp);
  return 0;
 }

 now = jiffies;
 status = nfs4_proc_get_lease_time(clp, &fsinfo);
 if (status == 0) {
  nfs4_set_lease_period(clp, fsinfo.lease_time * HZ, now);
  nfs4_schedule_state_renewal(clp);
 }

 return status;
}
