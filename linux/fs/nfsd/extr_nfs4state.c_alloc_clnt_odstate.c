
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_clnt_odstate {int co_odcount; struct nfs4_client* co_client; } ;
struct nfs4_client {int dummy; } ;


 int GFP_KERNEL ;
 struct nfs4_clnt_odstate* kmem_cache_zalloc (int ,int ) ;
 int odstate_slab ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct nfs4_clnt_odstate *
alloc_clnt_odstate(struct nfs4_client *clp)
{
 struct nfs4_clnt_odstate *co;

 co = kmem_cache_zalloc(odstate_slab, GFP_KERNEL);
 if (co) {
  co->co_client = clp;
  refcount_set(&co->co_odcount, 1);
 }
 return co;
}
