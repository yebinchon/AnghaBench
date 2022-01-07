
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_export; struct dentry* fh_dentry; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct svc_export {TYPE_1__ ex_path; } ;
struct dentry {int dummy; } ;
typedef int __be32 ;


 int EX_NOHIDE (struct svc_export*) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int PTR_ERR (struct dentry*) ;
 int SVCFH_fmt (struct svc_fh*) ;
 struct dentry* dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dprintk (char*,int ,unsigned int,char const*) ;
 int dput (struct dentry*) ;
 struct svc_export* exp_get (int ) ;
 int exp_put (struct svc_export*) ;
 int fh_lock_nested (struct svc_fh*,int ) ;
 int fh_unlock (struct svc_fh*) ;
 scalar_t__ isdotent (char const*,unsigned int) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,unsigned int) ;
 int nfsd_cross_mnt (struct svc_rqst*,struct dentry**,struct svc_export**) ;
 int nfsd_lookup_parent (struct svc_rqst*,struct dentry*,struct svc_export**,struct dentry**) ;
 scalar_t__ nfsd_mountpoint (struct dentry*,struct svc_export*) ;
 int nfsd_v4client (struct svc_rqst*) ;
 int nfserrno (int) ;

__be32
nfsd_lookup_dentry(struct svc_rqst *rqstp, struct svc_fh *fhp,
     const char *name, unsigned int len,
     struct svc_export **exp_ret, struct dentry **dentry_ret)
{
 struct svc_export *exp;
 struct dentry *dparent;
 struct dentry *dentry;
 int host_err;

 dprintk("nfsd: nfsd_lookup(fh %s, %.*s)\n", SVCFH_fmt(fhp), len,name);

 dparent = fhp->fh_dentry;
 exp = exp_get(fhp->fh_export);


 if (isdotent(name, len)) {
  if (len==1)
   dentry = dget(dparent);
  else if (dparent != exp->ex_path.dentry)
   dentry = dget_parent(dparent);
  else if (!EX_NOHIDE(exp) && !nfsd_v4client(rqstp))
   dentry = dget(dparent);
  else {

   host_err = nfsd_lookup_parent(rqstp, dparent, &exp, &dentry);
   if (host_err)
    goto out_nfserr;
  }
 } else {





  fh_lock_nested(fhp, I_MUTEX_PARENT);
  dentry = lookup_one_len(name, dparent, len);
  host_err = PTR_ERR(dentry);
  if (IS_ERR(dentry))
   goto out_nfserr;
  if (nfsd_mountpoint(dentry, exp)) {
   fh_unlock(fhp);
   if ((host_err = nfsd_cross_mnt(rqstp, &dentry, &exp))) {
    dput(dentry);
    goto out_nfserr;
   }
  }
 }
 *dentry_ret = dentry;
 *exp_ret = exp;
 return 0;

out_nfserr:
 exp_put(exp);
 return nfserrno(host_err);
}
