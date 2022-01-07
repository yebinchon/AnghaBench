
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int i_flags; } ;


 int VFS_I (struct xfs_inode*) ;
 int XFS_INEW ;
 int __XFS_INEW_BIT ;
 int barrier () ;
 int unlock_new_inode (int ) ;
 int wake_up_bit (int *,int ) ;
 int xfs_iflags_clear (struct xfs_inode*,int ) ;

__attribute__((used)) static inline void xfs_finish_inode_setup(struct xfs_inode *ip)
{
 xfs_iflags_clear(ip, XFS_INEW);
 barrier();
 unlock_new_inode(VFS_I(ip));
 wake_up_bit(&ip->i_flags, __XFS_INEW_BIT);
}
