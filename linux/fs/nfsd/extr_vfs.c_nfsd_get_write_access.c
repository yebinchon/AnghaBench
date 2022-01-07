
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_dentry; int fh_export; } ;
struct inode {scalar_t__ i_size; } ;
struct iattr {scalar_t__ ia_size; } ;
typedef scalar_t__ __be32 ;


 int NFSD_MAY_OWNER_OVERRIDE ;
 int NFSD_MAY_TRUNC ;
 struct inode* d_inode (int ) ;
 int get_write_access (struct inode*) ;
 int locks_verify_truncate (struct inode*,int *,scalar_t__) ;
 scalar_t__ nfsd_permission (struct svc_rqst*,int ,int ,int) ;
 scalar_t__ nfserrno (int) ;
 int put_write_access (struct inode*) ;

__attribute__((used)) static __be32
nfsd_get_write_access(struct svc_rqst *rqstp, struct svc_fh *fhp,
  struct iattr *iap)
{
 struct inode *inode = d_inode(fhp->fh_dentry);
 int host_err;

 if (iap->ia_size < inode->i_size) {
  __be32 err;

  err = nfsd_permission(rqstp, fhp->fh_export, fhp->fh_dentry,
    NFSD_MAY_TRUNC | NFSD_MAY_OWNER_OVERRIDE);
  if (err)
   return err;
 }

 host_err = get_write_access(inode);
 if (host_err)
  goto out_nfserrno;

 host_err = locks_verify_truncate(inode, ((void*)0), iap->ia_size);
 if (host_err)
  goto out_put_write_access;
 return 0;

out_put_write_access:
 put_write_access(inode);
out_nfserrno:
 return nfserrno(host_err);
}
