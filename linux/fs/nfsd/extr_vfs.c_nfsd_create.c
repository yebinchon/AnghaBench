
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_export; struct dentry* fh_dentry; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;
typedef scalar_t__ __be32 ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int NFSD_MAY_NOP ;
 int PTR_ERR (struct dentry*) ;
 int S_IFDIR ;
 int dput (struct dentry*) ;
 scalar_t__ fh_compose (struct svc_fh*,int ,struct dentry*,struct svc_fh*) ;
 int fh_lock_nested (struct svc_fh*,int ) ;
 scalar_t__ fh_verify (struct svc_rqst*,struct svc_fh*,int ,int ) ;
 int fh_want_write (struct svc_fh*) ;
 scalar_t__ isdotent (char*,int) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int) ;
 scalar_t__ nfsd_create_locked (struct svc_rqst*,struct svc_fh*,char*,int,struct iattr*,int,int ,struct svc_fh*) ;
 scalar_t__ nfserr_exist ;
 scalar_t__ nfserrno (int) ;

__be32
nfsd_create(struct svc_rqst *rqstp, struct svc_fh *fhp,
  char *fname, int flen, struct iattr *iap,
  int type, dev_t rdev, struct svc_fh *resfhp)
{
 struct dentry *dentry, *dchild = ((void*)0);
 __be32 err;
 int host_err;

 if (isdotent(fname, flen))
  return nfserr_exist;

 err = fh_verify(rqstp, fhp, S_IFDIR, NFSD_MAY_NOP);
 if (err)
  return err;

 dentry = fhp->fh_dentry;

 host_err = fh_want_write(fhp);
 if (host_err)
  return nfserrno(host_err);

 fh_lock_nested(fhp, I_MUTEX_PARENT);
 dchild = lookup_one_len(fname, dentry, flen);
 host_err = PTR_ERR(dchild);
 if (IS_ERR(dchild))
  return nfserrno(host_err);
 err = fh_compose(resfhp, fhp->fh_export, dchild, fhp);




 dput(dchild);
 if (err)
  return err;
 return nfsd_create_locked(rqstp, fhp, fname, flen, iap, type,
     rdev, resfhp);
}
