
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {scalar_t__ cl_slot_tbl; } ;


 int kfree (scalar_t__) ;
 int nfs4_shutdown_slot_table (scalar_t__) ;

void nfs40_shutdown_client(struct nfs_client *clp)
{
 if (clp->cl_slot_tbl) {
  nfs4_shutdown_slot_table(clp->cl_slot_tbl);
  kfree(clp->cl_slot_tbl);
 }
}
