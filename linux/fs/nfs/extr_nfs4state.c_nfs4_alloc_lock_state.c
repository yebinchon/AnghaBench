
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {int lockowner_id; } ;
struct nfs4_state {TYPE_1__* owner; } ;
struct TYPE_4__ {scalar_t__ owner_id; } ;
struct nfs4_lock_state {int ls_locks; TYPE_2__ ls_seqid; int ls_owner; struct nfs4_state* ls_state; int ls_count; } ;
typedef int fl_owner_t ;
struct TYPE_3__ {struct nfs_server* so_server; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct nfs4_lock_state*) ;
 struct nfs4_lock_state* kzalloc (int,int ) ;
 int nfs4_init_seqid_counter (TYPE_2__*) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct nfs4_lock_state *nfs4_alloc_lock_state(struct nfs4_state *state, fl_owner_t fl_owner)
{
 struct nfs4_lock_state *lsp;
 struct nfs_server *server = state->owner->so_server;

 lsp = kzalloc(sizeof(*lsp), GFP_NOFS);
 if (lsp == ((void*)0))
  return ((void*)0);
 nfs4_init_seqid_counter(&lsp->ls_seqid);
 refcount_set(&lsp->ls_count, 1);
 lsp->ls_state = state;
 lsp->ls_owner = fl_owner;
 lsp->ls_seqid.owner_id = ida_simple_get(&server->lockowner_id, 0, 0, GFP_NOFS);
 if (lsp->ls_seqid.owner_id < 0)
  goto out_free;
 INIT_LIST_HEAD(&lsp->ls_locks);
 return lsp;
out_free:
 kfree(lsp);
 return ((void*)0);
}
