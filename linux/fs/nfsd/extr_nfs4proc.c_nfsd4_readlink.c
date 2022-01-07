
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rl_fhp; struct svc_rqst* rl_rqstp; } ;
union nfsd4_op_u {TYPE_1__ readlink; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int __be32 ;


 int nfs_ok ;

__attribute__((used)) static __be32
nfsd4_readlink(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
        union nfsd4_op_u *u)
{
 u->readlink.rl_rqstp = rqstp;
 u->readlink.rl_fhp = &cstate->current_fh;
 return nfs_ok;
}
