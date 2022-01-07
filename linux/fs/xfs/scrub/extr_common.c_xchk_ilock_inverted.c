
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_inode {int dummy; } ;


 int EDEADLOCK ;
 int delay (int) ;
 scalar_t__ xfs_ilock_nowait (struct xfs_inode*,int ) ;

int
xchk_ilock_inverted(
 struct xfs_inode *ip,
 uint lock_mode)
{
 int i;

 for (i = 0; i < 20; i++) {
  if (xfs_ilock_nowait(ip, lock_mode))
   return 0;
  delay(1);
 }
 return -EDEADLOCK;
}
