
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int caps; int flags; } ;
struct inode {int i_mode; scalar_t__ i_nlink; } ;


 int ECHILD ;
 int ESTALE ;
 scalar_t__ IS_AUTOMOUNT (struct inode*) ;
 unsigned int LOOKUP_OPEN ;
 unsigned int LOOKUP_RCU ;
 unsigned int LOOKUP_REVAL ;
 int NFS_CAP_ATOMIC_OPEN ;
 int NFS_MOUNT_NOCTO ;
 struct nfs_server* NFS_SERVER (struct inode*) ;

 int S_IFMT ;

 int __nfs_revalidate_inode (struct nfs_server*,struct inode*) ;

__attribute__((used)) static
int nfs_lookup_verify_inode(struct inode *inode, unsigned int flags)
{
 struct nfs_server *server = NFS_SERVER(inode);
 int ret;

 if (IS_AUTOMOUNT(inode))
  return 0;

 if (flags & LOOKUP_OPEN) {
  switch (inode->i_mode & S_IFMT) {
  case 128:

   if (server->caps & NFS_CAP_ATOMIC_OPEN)
    goto out;

  case 129:
   if (server->flags & NFS_MOUNT_NOCTO)
    break;

   goto out_force;
  }
 }


 if (flags & LOOKUP_REVAL)
  goto out_force;
out:
 return (inode->i_nlink == 0) ? -ESTALE : 0;
out_force:
 if (flags & LOOKUP_RCU)
  return -ECHILD;
 ret = __nfs_revalidate_inode(server, inode);
 if (ret != 0)
  return ret;
 goto out;
}
