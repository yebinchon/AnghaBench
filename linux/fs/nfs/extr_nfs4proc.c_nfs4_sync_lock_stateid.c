
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int state_lock; } ;
struct nfs4_lock_state {int ls_stateid; struct nfs4_state* ls_state; } ;
typedef int nfs4_stateid ;


 int nfs4_stateid_copy (int *,int *) ;
 int nfs4_stateid_match_other (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool nfs4_sync_lock_stateid(nfs4_stateid *dst,
  struct nfs4_lock_state *lsp)
{
 struct nfs4_state *state = lsp->ls_state;
 bool ret;

 spin_lock(&state->state_lock);
 ret = !nfs4_stateid_match_other(dst, &lsp->ls_stateid);
 nfs4_stateid_copy(dst, &lsp->ls_stateid);
 spin_unlock(&state->state_lock);
 return ret;
}
