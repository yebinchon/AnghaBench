
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stid {int dummy; } ;


 int atomic_long_dec (int *) ;
 int deleg_slab ;
 int kmem_cache_free (int ,struct nfs4_stid*) ;
 int num_delegations ;

__attribute__((used)) static void nfs4_free_deleg(struct nfs4_stid *stid)
{
 kmem_cache_free(deleg_slab, stid);
 atomic_long_dec(&num_delegations);
}
