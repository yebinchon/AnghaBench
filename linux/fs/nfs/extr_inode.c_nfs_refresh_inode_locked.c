
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;


 int nfs_check_inode_attributes (struct inode*,struct nfs_fattr*) ;
 scalar_t__ nfs_inode_attrs_need_update (struct inode*,struct nfs_fattr*) ;
 int nfs_update_inode (struct inode*,struct nfs_fattr*) ;
 int trace_nfs_refresh_inode_enter (struct inode*) ;
 int trace_nfs_refresh_inode_exit (struct inode*,int) ;

__attribute__((used)) static int nfs_refresh_inode_locked(struct inode *inode, struct nfs_fattr *fattr)
{
 int ret;

 trace_nfs_refresh_inode_enter(inode);

 if (nfs_inode_attrs_need_update(inode, fattr))
  ret = nfs_update_inode(inode, fattr);
 else
  ret = nfs_check_inode_attributes(inode, fattr);

 trace_nfs_refresh_inode_exit(inode, ret);
 return ret;
}
