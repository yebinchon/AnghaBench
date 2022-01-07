
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_compound_state {scalar_t__ status; scalar_t__ clp; int session; TYPE_1__* slot; } ;
struct nfsd4_compoundres {struct nfsd4_compound_state cstate; } ;
struct TYPE_2__ {int sl_flags; } ;


 int NFSD4_SLOT_INUSE ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;
 int nfsd4_put_session (int ) ;
 int nfsd4_store_cache_entry (struct nfsd4_compoundres*) ;
 scalar_t__ nfserr_replay_cache ;
 int put_client_renew (scalar_t__) ;

void
nfsd4_sequence_done(struct nfsd4_compoundres *resp)
{
 struct nfsd4_compound_state *cs = &resp->cstate;

 if (nfsd4_has_session(cs)) {
  if (cs->status != nfserr_replay_cache) {
   nfsd4_store_cache_entry(resp);
   cs->slot->sl_flags &= ~NFSD4_SLOT_INUSE;
  }

  nfsd4_put_session(cs->session);
 } else if (cs->clp)
  put_client_renew(cs->clp);
}
