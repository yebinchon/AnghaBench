
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int dummy; } ;
struct nfs4_lockowner {int dummy; } ;


 int kmem_cache_free (int ,struct nfs4_lockowner*) ;
 struct nfs4_lockowner* lockowner (struct nfs4_stateowner*) ;
 int lockowner_slab ;

__attribute__((used)) static void nfs4_free_lockowner(struct nfs4_stateowner *sop)
{
 struct nfs4_lockowner *lo = lockowner(sop);

 kmem_cache_free(lockowner_slab, lo);
}
