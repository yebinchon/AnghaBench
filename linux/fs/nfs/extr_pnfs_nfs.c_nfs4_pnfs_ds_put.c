
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_pnfs_ds {int ds_node; int ds_count; } ;


 int destroy_ds (struct nfs4_pnfs_ds*) ;
 int list_del_init (int *) ;
 int nfs4_ds_cache_lock ;
 scalar_t__ refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;

void nfs4_pnfs_ds_put(struct nfs4_pnfs_ds *ds)
{
 if (refcount_dec_and_lock(&ds->ds_count,
    &nfs4_ds_cache_lock)) {
  list_del_init(&ds->ds_node);
  spin_unlock(&nfs4_ds_cache_lock);
  destroy_ds(ds);
 }
}
