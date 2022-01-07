
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {struct dentry* fh_dentry; } ;
struct kstat {int mtime; } ;
struct dentry {int dummy; } ;
typedef int __be32 ;


 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int * encode_fattr3 (struct svc_rqst*,int *,struct svc_fh*,struct kstat*) ;
 int fh_getattr (struct svc_fh*,struct kstat*) ;
 int lease_get_mtime (int ,int *) ;
 int xdr_one ;
 int xdr_zero ;

__attribute__((used)) static __be32 *
encode_post_op_attr(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp)
{
 struct dentry *dentry = fhp->fh_dentry;
 if (dentry && d_really_is_positive(dentry)) {
         __be32 err;
  struct kstat stat;

  err = fh_getattr(fhp, &stat);
  if (!err) {
   *p++ = xdr_one;
   lease_get_mtime(d_inode(dentry), &stat.mtime);
   return encode_fattr3(rqstp, p, fhp, &stat);
  }
 }
 *p++ = xdr_zero;
 return p;
}
