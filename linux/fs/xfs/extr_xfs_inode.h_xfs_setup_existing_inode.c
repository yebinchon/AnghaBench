
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;


 int xfs_finish_inode_setup (struct xfs_inode*) ;
 int xfs_setup_inode (struct xfs_inode*) ;
 int xfs_setup_iops (struct xfs_inode*) ;

__attribute__((used)) static inline void xfs_setup_existing_inode(struct xfs_inode *ip)
{
 xfs_setup_inode(ip);
 xfs_setup_iops(ip);
 xfs_finish_inode_setup(ip);
}
