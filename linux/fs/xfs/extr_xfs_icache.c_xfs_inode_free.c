
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int i_flags_lock; scalar_t__ i_ino; int i_flags; } ;


 int ASSERT (int) ;
 int XFS_IRECLAIM ;
 int __xfs_inode_free (struct xfs_inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_isiflocked (struct xfs_inode*) ;

void
xfs_inode_free(
 struct xfs_inode *ip)
{
 ASSERT(!xfs_isiflocked(ip));







 spin_lock(&ip->i_flags_lock);
 ip->i_flags = XFS_IRECLAIM;
 ip->i_ino = 0;
 spin_unlock(&ip->i_flags_lock);

 __xfs_inode_free(ip);
}
