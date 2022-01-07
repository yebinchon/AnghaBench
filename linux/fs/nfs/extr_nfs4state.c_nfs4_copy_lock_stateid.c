
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_lock_context {TYPE_1__* open_context; int lockowner; } ;
struct nfs4_state {int state_lock; int flags; } ;
struct nfs4_lock_state {int ls_stateid; int ls_flags; } ;
typedef int nfs4_stateid ;
typedef int fl_owner_t ;
struct TYPE_2__ {int flock_owner; } ;


 int EIO ;
 int ENOENT ;
 int LK_STATE_IN_USE ;
 int NFS_LOCK_INITIALIZED ;
 int NFS_LOCK_LOST ;
 struct nfs4_lock_state* __nfs4_find_lock_state (struct nfs4_state*,int ,int ) ;
 int nfs4_put_lock_state (struct nfs4_lock_state*) ;
 int nfs4_stateid_copy (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nfs4_copy_lock_stateid(nfs4_stateid *dst,
  struct nfs4_state *state,
  const struct nfs_lock_context *l_ctx)
{
 struct nfs4_lock_state *lsp;
 fl_owner_t fl_owner, fl_flock_owner;
 int ret = -ENOENT;

 if (l_ctx == ((void*)0))
  goto out;

 if (test_bit(LK_STATE_IN_USE, &state->flags) == 0)
  goto out;

 fl_owner = l_ctx->lockowner;
 fl_flock_owner = l_ctx->open_context->flock_owner;

 spin_lock(&state->state_lock);
 lsp = __nfs4_find_lock_state(state, fl_owner, fl_flock_owner);
 if (lsp && test_bit(NFS_LOCK_LOST, &lsp->ls_flags))
  ret = -EIO;
 else if (lsp != ((void*)0) && test_bit(NFS_LOCK_INITIALIZED, &lsp->ls_flags) != 0) {
  nfs4_stateid_copy(dst, &lsp->ls_stateid);
  ret = 0;
 }
 spin_unlock(&state->state_lock);
 nfs4_put_lock_state(lsp);
out:
 return ret;
}
