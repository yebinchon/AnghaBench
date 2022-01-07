
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_getattr {int* ga_bmval; int * ga_fhp; } ;
union nfsd4_op_u {struct nfsd4_getattr getattr; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {size_t minorversion; int current_fh; } ;
typedef scalar_t__ __be32 ;


 int NFSD_MAY_NOP ;
 int NFSD_WRITEONLY_ATTRS_WORD1 ;
 scalar_t__ fh_verify (struct svc_rqst*,int *,int ,int ) ;
 scalar_t__ nfs_ok ;
 int** nfsd_suppattrs ;
 scalar_t__ nfserr_inval ;

__attribute__((used)) static __be32
nfsd4_getattr(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
       union nfsd4_op_u *u)
{
 struct nfsd4_getattr *getattr = &u->getattr;
 __be32 status;

 status = fh_verify(rqstp, &cstate->current_fh, 0, NFSD_MAY_NOP);
 if (status)
  return status;

 if (getattr->ga_bmval[1] & NFSD_WRITEONLY_ATTRS_WORD1)
  return nfserr_inval;

 getattr->ga_bmval[0] &= nfsd_suppattrs[cstate->minorversion][0];
 getattr->ga_bmval[1] &= nfsd_suppattrs[cstate->minorversion][1];
 getattr->ga_bmval[2] &= nfsd_suppattrs[cstate->minorversion][2];

 getattr->ga_fhp = &cstate->current_fh;
 return nfs_ok;
}
