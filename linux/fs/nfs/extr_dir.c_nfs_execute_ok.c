
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct inode {int i_mode; } ;


 int EACCES ;
 int ECHILD ;
 int MAY_NOT_BLOCK ;
 int NFS_INO_INVALID_OTHER ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int __nfs_revalidate_inode (struct nfs_server*,struct inode*) ;
 int execute_ok (struct inode*) ;
 scalar_t__ nfs_check_cache_invalid (struct inode*,int ) ;

__attribute__((used)) static int nfs_execute_ok(struct inode *inode, int mask)
{
 struct nfs_server *server = NFS_SERVER(inode);
 int ret = 0;

 if (S_ISDIR(inode->i_mode))
  return 0;
 if (nfs_check_cache_invalid(inode, NFS_INO_INVALID_OTHER)) {
  if (mask & MAY_NOT_BLOCK)
   return -ECHILD;
  ret = __nfs_revalidate_inode(server, inode);
 }
 if (ret == 0 && !execute_ok(inode))
  ret = -EACCES;
 return ret;
}
