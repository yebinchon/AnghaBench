
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nfsd4_op_u {int dummy; } nfsd4_op_u ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int fh_dentry; } ;
struct nfsd4_compound_state {int save_stateid; int current_stateid; TYPE_1__ save_fh; int current_fh; } ;
typedef int stateid_t ;
typedef int __be32 ;


 int CURRENT_STATE_ID_FLAG ;
 scalar_t__ HAS_STATE_ID (struct nfsd4_compound_state*,int ) ;
 int SAVED_STATE_ID_FLAG ;
 int SET_STATE_ID (struct nfsd4_compound_state*,int ) ;
 int fh_dup2 (int *,TYPE_1__*) ;
 int memcpy (int *,int *,int) ;
 int nfs_ok ;
 int nfserr_restorefh ;

__attribute__((used)) static __be32
nfsd4_restorefh(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 if (!cstate->save_fh.fh_dentry)
  return nfserr_restorefh;

 fh_dup2(&cstate->current_fh, &cstate->save_fh);
 if (HAS_STATE_ID(cstate, SAVED_STATE_ID_FLAG)) {
  memcpy(&cstate->current_stateid, &cstate->save_stateid, sizeof(stateid_t));
  SET_STATE_ID(cstate, CURRENT_STATE_ID_FLAG);
 }
 return nfs_ok;
}
