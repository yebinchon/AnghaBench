
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_layout_stateid {int dummy; } ;
struct nfs4_layout {int dummy; } ;


 int DEVID_HASH_SIZE ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (void*) ;
 void* nfs4_layout_cache ;
 void* nfs4_layout_stateid_cache ;
 int * nfsd_devid_hash ;

int
nfsd4_init_pnfs(void)
{
 int i;

 for (i = 0; i < DEVID_HASH_SIZE; i++)
  INIT_LIST_HEAD(&nfsd_devid_hash[i]);

 nfs4_layout_cache = kmem_cache_create("nfs4_layout",
   sizeof(struct nfs4_layout), 0, 0, ((void*)0));
 if (!nfs4_layout_cache)
  return -ENOMEM;

 nfs4_layout_stateid_cache = kmem_cache_create("nfs4_layout_stateid",
   sizeof(struct nfs4_layout_stateid), 0, 0, ((void*)0));
 if (!nfs4_layout_stateid_cache) {
  kmem_cache_destroy(nfs4_layout_cache);
  return -ENOMEM;
 }
 return 0;
}
