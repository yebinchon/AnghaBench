
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct inode {int dummy; } ;


 int ESTALE ;
 scalar_t__ NFS_STALE (struct inode*) ;
 int __nfs_revalidate_inode (struct nfs_server*,struct inode*) ;
 int nfs_need_revalidate_inode (struct inode*) ;

int nfs_revalidate_inode(struct nfs_server *server, struct inode *inode)
{
 if (!nfs_need_revalidate_inode(inode))
  return NFS_STALE(inode) ? -ESTALE : 0;
 return __nfs_revalidate_inode(server, inode);
}
