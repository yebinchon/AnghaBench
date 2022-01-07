
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nfsd4_op_u {int dummy; } nfsd4_op_u ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int __be32 ;


 int exp_pseudoroot (struct svc_rqst*,int *) ;
 int fh_put (int *) ;

__attribute__((used)) static __be32
nfsd4_putrootfh(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 __be32 status;

 fh_put(&cstate->current_fh);
 status = exp_pseudoroot(rqstp, &cstate->current_fh);
 return status;
}
