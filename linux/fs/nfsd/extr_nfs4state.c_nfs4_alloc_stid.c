
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int so_id; int so_clid; } ;
struct TYPE_4__ {TYPE_1__ si_opaque; } ;
struct nfs4_stid {void (* sc_free ) (struct nfs4_stid*) ;int sc_lock; int sc_count; TYPE_2__ sc_stateid; struct nfs4_client* sc_client; } ;
struct nfs4_client {int cl_clientid; int cl_lock; int cl_stateids; } ;
struct kmem_cache {int dummy; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int idr_alloc_cyclic (int *,struct nfs4_stid*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int kmem_cache_free (struct kmem_cache*,struct nfs4_stid*) ;
 struct nfs4_stid* kmem_cache_zalloc (struct kmem_cache*,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

struct nfs4_stid *nfs4_alloc_stid(struct nfs4_client *cl, struct kmem_cache *slab,
      void (*sc_free)(struct nfs4_stid *))
{
 struct nfs4_stid *stid;
 int new_id;

 stid = kmem_cache_zalloc(slab, GFP_KERNEL);
 if (!stid)
  return ((void*)0);

 idr_preload(GFP_KERNEL);
 spin_lock(&cl->cl_lock);

 new_id = idr_alloc_cyclic(&cl->cl_stateids, stid, 1, 0, GFP_NOWAIT);
 spin_unlock(&cl->cl_lock);
 idr_preload_end();
 if (new_id < 0)
  goto out_free;

 stid->sc_free = sc_free;
 stid->sc_client = cl;
 stid->sc_stateid.si_opaque.so_id = new_id;
 stid->sc_stateid.si_opaque.so_clid = cl->cl_clientid;

 refcount_set(&stid->sc_count, 1);
 spin_lock_init(&stid->sc_lock);
 return stid;
out_free:
 kmem_cache_free(slab, stid);
 return ((void*)0);
}
