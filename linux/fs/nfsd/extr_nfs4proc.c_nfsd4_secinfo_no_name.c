
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin_style; int sin_exp; } ;
union nfsd4_op_u {TYPE_1__ secinfo_no_name; } ;
struct svc_rqst {int dummy; } ;
struct TYPE_5__ {int fh_export; } ;
struct nfsd4_compound_state {TYPE_2__ current_fh; } ;
typedef int __be32 ;




 int exp_get (int ) ;
 int fh_put (TYPE_2__*) ;
 int nfs_ok ;
 int nfsd4_do_lookupp (struct svc_rqst*,TYPE_2__*) ;
 int nfserr_inval ;

__attribute__((used)) static __be32
nfsd4_secinfo_no_name(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 __be32 err;

 switch (u->secinfo_no_name.sin_style) {
 case 129:
  break;
 case 128:
  err = nfsd4_do_lookupp(rqstp, &cstate->current_fh);
  if (err)
   return err;
  break;
 default:
  return nfserr_inval;
 }

 u->secinfo_no_name.sin_exp = exp_get(cstate->current_fh.fh_export);
 fh_put(&cstate->current_fh);
 return nfs_ok;
}
