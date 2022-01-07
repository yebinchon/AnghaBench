
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nfsd4_op_u {int allocate; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
typedef int __be32 ;


 int nfsd4_fallocate (struct svc_rqst*,struct nfsd4_compound_state*,int *,int ) ;

__attribute__((used)) static __be32
nfsd4_allocate(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
        union nfsd4_op_u *u)
{
 return nfsd4_fallocate(rqstp, cstate, &u->allocate, 0);
}
