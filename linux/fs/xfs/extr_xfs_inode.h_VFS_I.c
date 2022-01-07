
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct xfs_inode {struct inode i_vnode; } ;



__attribute__((used)) static inline struct inode *VFS_I(struct xfs_inode *ip)
{
 return &ip->i_vnode;
}
