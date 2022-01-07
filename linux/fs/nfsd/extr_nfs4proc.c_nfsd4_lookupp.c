
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nfsd4_op_u {int dummy; } nfsd4_op_u ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int __be32 ;


 int nfsd4_do_lookupp (struct svc_rqst*,int *) ;

__attribute__((used)) static __be32
nfsd4_lookupp(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
       union nfsd4_op_u *u)
{
 return nfsd4_do_lookupp(rqstp, &cstate->current_fh);
}
