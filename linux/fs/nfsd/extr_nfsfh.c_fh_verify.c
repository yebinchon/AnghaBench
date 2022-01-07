
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct svc_rqst {int dummy; } ;
struct svc_fh {struct svc_export* fh_export; struct dentry* fh_dentry; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct svc_export {TYPE_1__ ex_path; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ __be32 ;
struct TYPE_4__ {int fh_stale; } ;


 int NFSD_MAY_BYPASS_GSS ;
 int NFSD_MAY_BYPASS_GSS_ON_ROOT ;
 int NFSD_MAY_LOCK ;
 int SVCFH_fmt (struct svc_fh*) ;
 scalar_t__ check_nfsd_access (struct svc_export*,struct svc_rqst*) ;
 scalar_t__ check_pseudo_root (struct svc_rqst*,struct dentry*,struct svc_export*) ;
 int dprintk (char*,struct dentry*,...) ;
 scalar_t__ nfsd_mode_check (struct svc_rqst*,struct dentry*,int ) ;
 scalar_t__ nfsd_permission (struct svc_rqst*,struct svc_export*,struct dentry*,int) ;
 scalar_t__ nfsd_set_fh_dentry (struct svc_rqst*,struct svc_fh*) ;
 scalar_t__ nfsd_setuser_and_check_port (struct svc_rqst*,struct svc_export*) ;
 TYPE_2__ nfsdstats ;
 scalar_t__ nfserr_stale ;
 int ntohl (scalar_t__) ;

__be32
fh_verify(struct svc_rqst *rqstp, struct svc_fh *fhp, umode_t type, int access)
{
 struct svc_export *exp;
 struct dentry *dentry;
 __be32 error;

 dprintk("nfsd: fh_verify(%s)\n", SVCFH_fmt(fhp));

 if (!fhp->fh_dentry) {
  error = nfsd_set_fh_dentry(rqstp, fhp);
  if (error)
   goto out;
 }
 dentry = fhp->fh_dentry;
 exp = fhp->fh_export;
 error = check_pseudo_root(rqstp, dentry, exp);
 if (error)
  goto out;

 error = nfsd_setuser_and_check_port(rqstp, exp);
 if (error)
  goto out;

 error = nfsd_mode_check(rqstp, dentry, type);
 if (error)
  goto out;






 if (access & NFSD_MAY_LOCK || access & NFSD_MAY_BYPASS_GSS)
  goto skip_pseudoflavor_check;





 if (access & NFSD_MAY_BYPASS_GSS_ON_ROOT
   && exp->ex_path.dentry == dentry)
  goto skip_pseudoflavor_check;

 error = check_nfsd_access(exp, rqstp);
 if (error)
  goto out;

skip_pseudoflavor_check:

 error = nfsd_permission(rqstp, exp, dentry, access);

 if (error) {
  dprintk("fh_verify: %pd2 permission failure, "
   "acc=%x, error=%d\n",
   dentry,
   access, ntohl(error));
 }
out:
 if (error == nfserr_stale)
  nfsdstats.fh_stale++;
 return error;
}
