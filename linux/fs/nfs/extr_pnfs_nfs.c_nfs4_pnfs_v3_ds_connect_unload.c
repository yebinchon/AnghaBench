
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * get_v3_ds_connect ;
 int nfs3_set_ds_client ;
 int symbol_put (int ) ;

void nfs4_pnfs_v3_ds_connect_unload(void)
{
 if (get_v3_ds_connect) {
  symbol_put(nfs3_set_ds_client);
  get_v3_ds_connect = ((void*)0);
 }
}
