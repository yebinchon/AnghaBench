
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int dummy; } ;
struct nfs4_openowner {int dummy; } ;


 int kmem_cache_free (int ,struct nfs4_openowner*) ;
 struct nfs4_openowner* openowner (struct nfs4_stateowner*) ;
 int openowner_slab ;

__attribute__((used)) static void nfs4_free_openowner(struct nfs4_stateowner *so)
{
 struct nfs4_openowner *oo = openowner(so);

 kmem_cache_free(openowner_slab, oo);
}
