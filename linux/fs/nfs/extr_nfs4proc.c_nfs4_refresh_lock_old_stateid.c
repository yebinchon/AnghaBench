
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct nfs4_state {int state_lock; } ;
struct TYPE_9__ {int seqid; } ;
struct nfs4_lock_state {TYPE_4__ ls_stateid; struct nfs4_state* ls_state; } ;
struct TYPE_8__ {int seqid; } ;
typedef TYPE_1__ nfs4_stateid ;


 int nfs4_stateid_is_newer (TYPE_4__*,TYPE_1__*) ;
 int nfs4_stateid_match_other (TYPE_1__*,TYPE_4__*) ;
 int nfs4_stateid_seqid_inc (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool nfs4_refresh_lock_old_stateid(nfs4_stateid *dst,
  struct nfs4_lock_state *lsp)
{
 struct nfs4_state *state = lsp->ls_state;
 bool ret = 0;

 spin_lock(&state->state_lock);
 if (!nfs4_stateid_match_other(dst, &lsp->ls_stateid))
  goto out;
 if (!nfs4_stateid_is_newer(&lsp->ls_stateid, dst))
  nfs4_stateid_seqid_inc(dst);
 else
  dst->seqid = lsp->ls_stateid.seqid;
 ret = 1;
out:
 spin_unlock(&state->state_lock);
 return ret;
}
