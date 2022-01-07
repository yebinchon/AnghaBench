
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compound_state {struct nfs4_stateowner* replay_owner; } ;
struct nfs4_stateowner {int so_seqid; scalar_t__ so_is_open_owner; } ;
typedef scalar_t__ __be32 ;


 int nfsd4_cstate_clear_replay (struct nfsd4_compound_state*) ;
 scalar_t__ nfserr_replay_me ;
 int ntohl (scalar_t__) ;
 int openowner (struct nfs4_stateowner*) ;
 int release_last_closed_stateid (int ) ;
 int seqid_mutating_err (int ) ;

void nfsd4_bump_seqid(struct nfsd4_compound_state *cstate, __be32 nfserr)
{
 struct nfs4_stateowner *so = cstate->replay_owner;

 if (nfserr == nfserr_replay_me)
  return;

 if (!seqid_mutating_err(ntohl(nfserr))) {
  nfsd4_cstate_clear_replay(cstate);
  return;
 }
 if (!so)
  return;
 if (so->so_is_open_owner)
  release_last_closed_stateid(openowner(so));
 so->so_seqid++;
 return;
}
