
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int deviceid; } ;
struct nfs4_ff_layout_ds {int ds_versions; int ds; TYPE_1__ id_node; } ;
struct TYPE_4__ {int rcu; } ;


 TYPE_2__ id_node ;
 int kfree (int ) ;
 int kfree_rcu (struct nfs4_ff_layout_ds*,int ) ;
 int nfs4_pnfs_ds_put (int ) ;
 int nfs4_print_deviceid (int *) ;

void nfs4_ff_layout_free_deviceid(struct nfs4_ff_layout_ds *mirror_ds)
{
 nfs4_print_deviceid(&mirror_ds->id_node.deviceid);
 nfs4_pnfs_ds_put(mirror_ds->ds);
 kfree(mirror_ds->ds_versions);
 kfree_rcu(mirror_ds, id_node.rcu);
}
