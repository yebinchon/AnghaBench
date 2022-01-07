
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lo_len; int lo_name; } ;
union nfsd4_op_u {TYPE_1__ lookup; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int __be32 ;


 int nfsd_lookup (struct svc_rqst*,int *,int ,int ,int *) ;

__attribute__((used)) static __be32
nfsd4_lookup(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      union nfsd4_op_u *u)
{
 return nfsd_lookup(rqstp, &cstate->current_fh,
      u->lookup.lo_name, u->lookup.lo_len,
      &cstate->current_fh);
}
