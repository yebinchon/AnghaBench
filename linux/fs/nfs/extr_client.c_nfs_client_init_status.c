
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {scalar_t__ cl_cons_state; } ;


 int EINVAL ;
 scalar_t__ NFS_CS_READY ;
 int WARN_ON_ONCE (int) ;

int nfs_client_init_status(const struct nfs_client *clp)
{

 if (clp->cl_cons_state > NFS_CS_READY) {
  WARN_ON_ONCE(1);
  return -EINVAL;
 }
 return clp->cl_cons_state;
}
