
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_netobj {int dummy; } ;
struct TYPE_2__ {int * data; } ;
struct nfs4_client {TYPE_1__ cl_name; int cl_cb_waitq; int cl_lock; int async_lock; int async_copies; int cl_lo_states; int cl_revoked; int cl_lru; int cl_delegations; int cl_openowners; int cl_idhash; int cl_cb_state; int cl_rpc_users; int cl_stateids; int cl_sessions; int * cl_ownerstr_hashtbl; } ;
struct list_head {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NFSD4_CB_UNKNOWN ;
 int OWNER_HASH_SIZE ;
 int atomic_set (int *,int ) ;
 int client_slab ;
 int idr_init (int *) ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int kmem_cache_free (int ,struct nfs4_client*) ;
 struct nfs4_client* kmem_cache_zalloc (int ,int ) ;
 int rpc_init_wait_queue (int *,char*) ;
 int spin_lock_init (int *) ;
 int xdr_netobj_dup (TYPE_1__*,struct xdr_netobj*,int ) ;

__attribute__((used)) static struct nfs4_client *alloc_client(struct xdr_netobj name)
{
 struct nfs4_client *clp;
 int i;

 clp = kmem_cache_zalloc(client_slab, GFP_KERNEL);
 if (clp == ((void*)0))
  return ((void*)0);
 xdr_netobj_dup(&clp->cl_name, &name, GFP_KERNEL);
 if (clp->cl_name.data == ((void*)0))
  goto err_no_name;
 clp->cl_ownerstr_hashtbl = kmalloc_array(OWNER_HASH_SIZE,
       sizeof(struct list_head),
       GFP_KERNEL);
 if (!clp->cl_ownerstr_hashtbl)
  goto err_no_hashtbl;
 for (i = 0; i < OWNER_HASH_SIZE; i++)
  INIT_LIST_HEAD(&clp->cl_ownerstr_hashtbl[i]);
 INIT_LIST_HEAD(&clp->cl_sessions);
 idr_init(&clp->cl_stateids);
 atomic_set(&clp->cl_rpc_users, 0);
 clp->cl_cb_state = NFSD4_CB_UNKNOWN;
 INIT_LIST_HEAD(&clp->cl_idhash);
 INIT_LIST_HEAD(&clp->cl_openowners);
 INIT_LIST_HEAD(&clp->cl_delegations);
 INIT_LIST_HEAD(&clp->cl_lru);
 INIT_LIST_HEAD(&clp->cl_revoked);



 INIT_LIST_HEAD(&clp->async_copies);
 spin_lock_init(&clp->async_lock);
 spin_lock_init(&clp->cl_lock);
 rpc_init_wait_queue(&clp->cl_cb_waitq, "Backchannel slot table");
 return clp;
err_no_hashtbl:
 kfree(clp->cl_name.data);
err_no_name:
 kmem_cache_free(client_slab, clp);
 return ((void*)0);
}
