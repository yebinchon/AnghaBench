
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_stateowner {int so_seqid; } ;
typedef int __be32 ;


 int nfs_ok ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;
 int nfserr_bad_seqid ;
 int nfserr_replay_me ;

__attribute__((used)) static __be32 nfsd4_check_seqid(struct nfsd4_compound_state *cstate, struct nfs4_stateowner *so, u32 seqid)
{
 if (nfsd4_has_session(cstate))
  return nfs_ok;
 if (seqid == so->so_seqid - 1)
  return nfserr_replay_me;
 if (seqid == so->so_seqid)
  return nfs_ok;
 return nfserr_bad_seqid;
}
