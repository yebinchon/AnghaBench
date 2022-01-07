
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {TYPE_2__* cl_mvops; } ;
struct nfs4_state {TYPE_1__* owner; int state_lock; int flags; int lock_states; } ;
struct nfs4_lock_state {int ls_flags; int ls_locks; int ls_count; struct nfs4_state* ls_state; } ;
struct TYPE_4__ {int (* free_lock_state ) (struct nfs_server*,struct nfs4_lock_state*) ;} ;
struct TYPE_3__ {struct nfs_server* so_server; } ;


 int LK_STATE_IN_USE ;
 int NFS_LOCK_INITIALIZED ;
 int clear_bit (int ,int *) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int nfs4_free_lock_state (struct nfs_server*,struct nfs4_lock_state*) ;
 int refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs_server*,struct nfs4_lock_state*) ;
 scalar_t__ test_bit (int ,int *) ;

void nfs4_put_lock_state(struct nfs4_lock_state *lsp)
{
 struct nfs_server *server;
 struct nfs4_state *state;

 if (lsp == ((void*)0))
  return;
 state = lsp->ls_state;
 if (!refcount_dec_and_lock(&lsp->ls_count, &state->state_lock))
  return;
 list_del(&lsp->ls_locks);
 if (list_empty(&state->lock_states))
  clear_bit(LK_STATE_IN_USE, &state->flags);
 spin_unlock(&state->state_lock);
 server = state->owner->so_server;
 if (test_bit(NFS_LOCK_INITIALIZED, &lsp->ls_flags)) {
  struct nfs_client *clp = server->nfs_client;

  clp->cl_mvops->free_lock_state(server, lsp);
 } else
  nfs4_free_lock_state(server, lsp);
}
