
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_pnfs_ds {int dummy; } ;
struct TYPE_3__ {int deviceid; } ;
struct nfs4_file_layout_dsaddr {int ds_num; int stripe_indices; struct nfs4_pnfs_ds** ds_list; TYPE_1__ id_node; } ;
struct TYPE_4__ {int rcu; } ;


 TYPE_2__ id_node ;
 int kfree (int ) ;
 int kfree_rcu (struct nfs4_file_layout_dsaddr*,int ) ;
 int nfs4_pnfs_ds_put (struct nfs4_pnfs_ds*) ;
 int nfs4_print_deviceid (int *) ;

void
nfs4_fl_free_deviceid(struct nfs4_file_layout_dsaddr *dsaddr)
{
 struct nfs4_pnfs_ds *ds;
 int i;

 nfs4_print_deviceid(&dsaddr->id_node.deviceid);

 for (i = 0; i < dsaddr->ds_num; i++) {
  ds = dsaddr->ds_list[i];
  if (ds != ((void*)0))
   nfs4_pnfs_ds_put(ds);
 }
 kfree(dsaddr->stripe_indices);
 kfree_rcu(dsaddr, id_node.rcu);
}
