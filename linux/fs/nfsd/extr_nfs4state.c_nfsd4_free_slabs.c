
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_slab ;
 int deleg_slab ;
 int file_slab ;
 int kmem_cache_destroy (int ) ;
 int lockowner_slab ;
 int odstate_slab ;
 int openowner_slab ;
 int stateid_slab ;

void
nfsd4_free_slabs(void)
{
 kmem_cache_destroy(client_slab);
 kmem_cache_destroy(openowner_slab);
 kmem_cache_destroy(lockowner_slab);
 kmem_cache_destroy(file_slab);
 kmem_cache_destroy(stateid_slab);
 kmem_cache_destroy(deleg_slab);
 kmem_cache_destroy(odstate_slab);
}
