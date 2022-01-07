
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {scalar_t__ cl_cons_state; } ;


 scalar_t__ NFS_CS_READY ;

bool nfs_client_init_is_complete(const struct nfs_client *clp)
{
 return clp->cl_cons_state <= NFS_CS_READY;
}
