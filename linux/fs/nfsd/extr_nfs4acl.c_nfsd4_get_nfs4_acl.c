
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct posix_acl {int a_count; } ;
struct nfs4_acl {scalar_t__ naces; } ;
struct inode {int i_mode; } ;
struct dentry {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 unsigned int NFS4_ACL_DIR ;
 unsigned int NFS4_ACL_TYPE_DEFAULT ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISDIR (int ) ;
 int _posix_to_nfsv4_one (struct posix_acl*,struct nfs4_acl*,unsigned int) ;
 struct inode* d_inode (struct dentry*) ;
 struct posix_acl* get_acl (struct inode*,int ) ;
 struct nfs4_acl* kmalloc (int ,int ) ;
 int nfs4_acl_bytes (int) ;
 struct posix_acl* posix_acl_from_mode (int ,int ) ;
 int posix_acl_release (struct posix_acl*) ;

int
nfsd4_get_nfs4_acl(struct svc_rqst *rqstp, struct dentry *dentry,
  struct nfs4_acl **acl)
{
 struct inode *inode = d_inode(dentry);
 int error = 0;
 struct posix_acl *pacl = ((void*)0), *dpacl = ((void*)0);
 unsigned int flags = 0;
 int size = 0;

 pacl = get_acl(inode, ACL_TYPE_ACCESS);
 if (!pacl)
  pacl = posix_acl_from_mode(inode->i_mode, GFP_KERNEL);

 if (IS_ERR(pacl))
  return PTR_ERR(pacl);


 size += 2 * pacl->a_count;

 if (S_ISDIR(inode->i_mode)) {
  flags = NFS4_ACL_DIR;
  dpacl = get_acl(inode, ACL_TYPE_DEFAULT);
  if (IS_ERR(dpacl)) {
   error = PTR_ERR(dpacl);
   goto rel_pacl;
  }

  if (dpacl)
   size += 2 * dpacl->a_count;
 }

 *acl = kmalloc(nfs4_acl_bytes(size), GFP_KERNEL);
 if (*acl == ((void*)0)) {
  error = -ENOMEM;
  goto out;
 }
 (*acl)->naces = 0;

 _posix_to_nfsv4_one(pacl, *acl, flags & ~NFS4_ACL_TYPE_DEFAULT);

 if (dpacl)
  _posix_to_nfsv4_one(dpacl, *acl, flags | NFS4_ACL_TYPE_DEFAULT);

out:
 posix_acl_release(dpacl);
rel_pacl:
 posix_acl_release(pacl);
 return error;
}
