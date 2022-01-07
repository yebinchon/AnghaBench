
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_ino_t ;
struct xfs_mount {int dummy; } ;


 scalar_t__ xfs_internal_inum (struct xfs_mount*,int ) ;
 int xfs_verify_ino (struct xfs_mount*,int ) ;

bool
xfs_verify_dir_ino(
 struct xfs_mount *mp,
 xfs_ino_t ino)
{
 if (xfs_internal_inum(mp, ino))
  return 0;
 return xfs_verify_ino(mp, ino);
}
