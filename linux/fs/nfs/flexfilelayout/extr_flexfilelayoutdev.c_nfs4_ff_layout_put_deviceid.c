
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_layout_ds {int id_node; } ;


 int IS_ERR_OR_NULL (struct nfs4_ff_layout_ds*) ;
 int nfs4_put_deviceid_node (int *) ;

void nfs4_ff_layout_put_deviceid(struct nfs4_ff_layout_ds *mirror_ds)
{
 if (!IS_ERR_OR_NULL(mirror_ds))
  nfs4_put_deviceid_node(&mirror_ds->id_node);
}
