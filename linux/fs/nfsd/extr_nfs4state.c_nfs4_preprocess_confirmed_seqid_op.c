
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfsd_net {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_openowner {int oo_flags; } ;
struct nfs4_ol_stateid {int st_stid; int st_mutex; int st_stateowner; } ;
typedef int stateid_t ;
typedef scalar_t__ __be32 ;


 int NFS4_OO_CONFIRMED ;
 int NFS4_OPEN_STID ;
 int mutex_unlock (int *) ;
 scalar_t__ nfs4_preprocess_seqid_op (struct nfsd4_compound_state*,int ,int *,int ,struct nfs4_ol_stateid**,struct nfsd_net*) ;
 int nfs4_put_stid (int *) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfserr_bad_stateid ;
 struct nfs4_openowner* openowner (int ) ;

__attribute__((used)) static __be32 nfs4_preprocess_confirmed_seqid_op(struct nfsd4_compound_state *cstate, u32 seqid,
       stateid_t *stateid, struct nfs4_ol_stateid **stpp, struct nfsd_net *nn)
{
 __be32 status;
 struct nfs4_openowner *oo;
 struct nfs4_ol_stateid *stp;

 status = nfs4_preprocess_seqid_op(cstate, seqid, stateid,
      NFS4_OPEN_STID, &stp, nn);
 if (status)
  return status;
 oo = openowner(stp->st_stateowner);
 if (!(oo->oo_flags & NFS4_OO_CONFIRMED)) {
  mutex_unlock(&stp->st_mutex);
  nfs4_put_stid(&stp->st_stid);
  return nfserr_bad_stateid;
 }
 *stpp = stp;
 return nfs_ok;
}
