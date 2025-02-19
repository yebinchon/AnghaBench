
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct svc_fh {int dummy; } ;
struct nfsd4_compound_state {struct svc_fh current_fh; } ;
struct nfs4_stateowner {int dummy; } ;
struct TYPE_2__ {int sc_stateid; } ;
struct nfs4_ol_stateid {int st_mutex; TYPE_1__ st_stid; struct nfs4_stateowner* st_stateowner; } ;
typedef int stateid_t ;
typedef scalar_t__ __be32 ;


 scalar_t__ check_stateid_generation (int *,int *,int ) ;
 int mutex_unlock (int *) ;
 scalar_t__ nfs4_check_fh (struct svc_fh*,TYPE_1__*) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_check_seqid (struct nfsd4_compound_state*,struct nfs4_stateowner*,int ) ;
 int nfsd4_has_session (struct nfsd4_compound_state*) ;
 scalar_t__ nfsd4_lock_ol_stateid (struct nfs4_ol_stateid*) ;

__attribute__((used)) static __be32 nfs4_seqid_op_checks(struct nfsd4_compound_state *cstate, stateid_t *stateid, u32 seqid, struct nfs4_ol_stateid *stp)
{
 struct svc_fh *current_fh = &cstate->current_fh;
 struct nfs4_stateowner *sop = stp->st_stateowner;
 __be32 status;

 status = nfsd4_check_seqid(cstate, sop, seqid);
 if (status)
  return status;
 status = nfsd4_lock_ol_stateid(stp);
 if (status != nfs_ok)
  return status;
 status = check_stateid_generation(stateid, &stp->st_stid.sc_stateid, nfsd4_has_session(cstate));
 if (status == nfs_ok)
  status = nfs4_check_fh(current_fh, &stp->st_stid);
 if (status != nfs_ok)
  mutex_unlock(&stp->st_mutex);
 return status;
}
