
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct svc_export {TYPE_1__ ex_path; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (struct svc_export*) ;
 int PTR_ERR (struct svc_export*) ;
 int exp_put (struct svc_export*) ;
 int fh_compose (struct svc_fh*,struct svc_export*,int ,int *) ;
 int nfserrno (int ) ;
 struct svc_export* rqst_find_fsidzero_export (struct svc_rqst*) ;

__be32
exp_pseudoroot(struct svc_rqst *rqstp, struct svc_fh *fhp)
{
 struct svc_export *exp;
 __be32 rv;

 exp = rqst_find_fsidzero_export(rqstp);
 if (IS_ERR(exp))
  return nfserrno(PTR_ERR(exp));
 rv = fh_compose(fhp, exp, exp->ex_path.dentry, ((void*)0));
 exp_put(exp);
 return rv;
}
