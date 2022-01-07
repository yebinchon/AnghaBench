
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int i_flags; } ;


 int ASSERT (int ) ;
 int XFS_IFLOCK ;
 int __XFS_IFLOCK_BIT ;
 int smp_mb () ;
 int wake_up_bit (int *,int ) ;
 int xfs_iflags_clear (struct xfs_inode*,int ) ;
 int xfs_isiflocked (struct xfs_inode*) ;

__attribute__((used)) static inline void xfs_ifunlock(struct xfs_inode *ip)
{
 ASSERT(xfs_isiflocked(ip));
 xfs_iflags_clear(ip, XFS_IFLOCK);
 smp_mb();
 wake_up_bit(&ip->i_flags, __XFS_IFLOCK_BIT);
}
