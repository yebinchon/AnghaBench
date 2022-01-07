
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nfsd4_op_u {int dummy; } nfsd4_op_u ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int current_stateid; int save_stateid; int current_fh; int save_fh; } ;
typedef int stateid_t ;
typedef int __be32 ;


 int CURRENT_STATE_ID_FLAG ;
 scalar_t__ HAS_STATE_ID (struct nfsd4_compound_state*,int ) ;
 int SAVED_STATE_ID_FLAG ;
 int SET_STATE_ID (struct nfsd4_compound_state*,int ) ;
 int fh_dup2 (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int nfs_ok ;

__attribute__((used)) static __be32
nfsd4_savefh(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      union nfsd4_op_u *u)
{
 fh_dup2(&cstate->save_fh, &cstate->current_fh);
 if (HAS_STATE_ID(cstate, CURRENT_STATE_ID_FLAG)) {
  memcpy(&cstate->save_stateid, &cstate->current_stateid, sizeof(stateid_t));
  SET_STATE_ID(cstate, SAVED_STATE_ID_FLAG);
 }
 return nfs_ok;
}
