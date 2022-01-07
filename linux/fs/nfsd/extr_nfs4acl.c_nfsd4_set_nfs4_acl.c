
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {struct dentry* fh_dentry; } ;
struct posix_acl {int dummy; } ;
struct nfs4_acl {int dummy; } ;
struct inode {int i_mode; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ __be32 ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 unsigned int NFS4_ACL_DIR ;
 int NFSD_MAY_SATTR ;
 scalar_t__ S_ISDIR (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int fh_lock (struct svc_fh*) ;
 int fh_unlock (struct svc_fh*) ;
 scalar_t__ fh_verify (struct svc_rqst*,struct svc_fh*,int ,int ) ;
 int nfs4_acl_nfsv4_to_posix (struct nfs4_acl*,struct posix_acl**,struct posix_acl**,unsigned int) ;
 scalar_t__ nfserr_attrnotsupp ;
 scalar_t__ nfserrno (int) ;
 int posix_acl_release (struct posix_acl*) ;
 int set_posix_acl (struct inode*,int ,struct posix_acl*) ;

__be32
nfsd4_set_nfs4_acl(struct svc_rqst *rqstp, struct svc_fh *fhp,
  struct nfs4_acl *acl)
{
 __be32 error;
 int host_error;
 struct dentry *dentry;
 struct inode *inode;
 struct posix_acl *pacl = ((void*)0), *dpacl = ((void*)0);
 unsigned int flags = 0;


 error = fh_verify(rqstp, fhp, 0, NFSD_MAY_SATTR);
 if (error)
  return error;

 dentry = fhp->fh_dentry;
 inode = d_inode(dentry);

 if (S_ISDIR(inode->i_mode))
  flags = NFS4_ACL_DIR;

 host_error = nfs4_acl_nfsv4_to_posix(acl, &pacl, &dpacl, flags);
 if (host_error == -EINVAL)
  return nfserr_attrnotsupp;
 if (host_error < 0)
  goto out_nfserr;

 fh_lock(fhp);

 host_error = set_posix_acl(inode, ACL_TYPE_ACCESS, pacl);
 if (host_error < 0)
  goto out_drop_lock;

 if (S_ISDIR(inode->i_mode)) {
  host_error = set_posix_acl(inode, ACL_TYPE_DEFAULT, dpacl);
 }

out_drop_lock:
 fh_unlock(fhp);

 posix_acl_release(pacl);
 posix_acl_release(dpacl);
out_nfserr:
 if (host_error == -EOPNOTSUPP)
  return nfserr_attrnotsupp;
 else
  return nfserrno(host_error);
}
