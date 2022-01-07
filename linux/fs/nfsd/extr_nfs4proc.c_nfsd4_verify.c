
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nfsd4_op_u {int nverify; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ _nfsd4_verify (struct svc_rqst*,struct nfsd4_compound_state*,int *) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfserr_same ;

__attribute__((used)) static __be32
nfsd4_verify(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      union nfsd4_op_u *u)
{
 __be32 status;

 status = _nfsd4_verify(rqstp, cstate, &u->nverify);
 return status == nfserr_same ? nfs_ok : status;
}
