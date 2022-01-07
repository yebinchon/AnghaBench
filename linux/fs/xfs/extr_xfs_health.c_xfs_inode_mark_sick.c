
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {unsigned int i_sick; unsigned int i_checked; int i_flags_lock; } ;


 int ASSERT (int) ;
 unsigned int XFS_SICK_INO_PRIMARY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_inode_mark_sick (struct xfs_inode*,unsigned int) ;

void
xfs_inode_mark_sick(
 struct xfs_inode *ip,
 unsigned int mask)
{
 ASSERT(!(mask & ~XFS_SICK_INO_PRIMARY));
 trace_xfs_inode_mark_sick(ip, mask);

 spin_lock(&ip->i_flags_lock);
 ip->i_sick |= mask;
 ip->i_checked |= mask;
 spin_unlock(&ip->i_flags_lock);
}
