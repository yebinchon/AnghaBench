
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {struct nfs4_slot_table* cl_slot_tbl; } ;
struct nfs4_slot_table {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int NFS4_MAX_SLOT_TABLE ;
 int kfree (struct nfs4_slot_table*) ;
 struct nfs4_slot_table* kzalloc (int,int ) ;
 int nfs4_setup_slot_table (struct nfs4_slot_table*,int ,char*) ;

int nfs40_init_client(struct nfs_client *clp)
{
 struct nfs4_slot_table *tbl;
 int ret;

 tbl = kzalloc(sizeof(*tbl), GFP_NOFS);
 if (tbl == ((void*)0))
  return -ENOMEM;

 ret = nfs4_setup_slot_table(tbl, NFS4_MAX_SLOT_TABLE,
     "NFSv4.0 transport Slot table");
 if (ret) {
  kfree(tbl);
  return ret;
 }

 clp->cl_slot_tbl = tbl;
 return 0;
}
