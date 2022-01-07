
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {struct nfs4_cached_acl* nfs4_acl; } ;
struct nfs4_cached_acl {scalar_t__ cached; size_t len; int data; } ;
struct inode {int i_lock; } ;
typedef int ssize_t ;


 int ENOENT ;
 int ERANGE ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int memcpy (char*,int ,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline ssize_t nfs4_read_cached_acl(struct inode *inode, char *buf, size_t buflen)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 struct nfs4_cached_acl *acl;
 int ret = -ENOENT;

 spin_lock(&inode->i_lock);
 acl = nfsi->nfs4_acl;
 if (acl == ((void*)0))
  goto out;
 if (buf == ((void*)0))
  goto out_len;
 if (acl->cached == 0)
  goto out;
 ret = -ERANGE;
 if (acl->len > buflen)
  goto out;
 memcpy(buf, acl->data, acl->len);
out_len:
 ret = acl->len;
out:
 spin_unlock(&inode->i_lock);
 return ret;
}
