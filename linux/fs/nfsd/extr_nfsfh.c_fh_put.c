
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {struct svc_export* fh_export; struct dentry* fh_dentry; } ;
struct svc_export {int dummy; } ;
struct dentry {int dummy; } ;


 int dput (struct dentry*) ;
 int exp_put (struct svc_export*) ;
 int fh_clear_wcc (struct svc_fh*) ;
 int fh_drop_write (struct svc_fh*) ;
 int fh_unlock (struct svc_fh*) ;

void
fh_put(struct svc_fh *fhp)
{
 struct dentry * dentry = fhp->fh_dentry;
 struct svc_export * exp = fhp->fh_export;
 if (dentry) {
  fh_unlock(fhp);
  fhp->fh_dentry = ((void*)0);
  dput(dentry);
  fh_clear_wcc(fhp);
 }
 fh_drop_write(fhp);
 if (exp) {
  exp_put(exp);
  fhp->fh_export = ((void*)0);
 }
 return;
}
