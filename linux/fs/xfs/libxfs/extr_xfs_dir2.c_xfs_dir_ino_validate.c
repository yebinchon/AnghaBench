
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_mount_t ;
typedef scalar_t__ xfs_ino_t ;


 int EFSCORRUPTED ;
 int XFS_ERRLEVEL_LOW ;
 int XFS_ERROR_REPORT (char*,int ,int *) ;
 int XFS_ERRTAG_DIR_INO_VALIDATE ;
 int XFS_TEST_ERROR (int,int *,int ) ;
 scalar_t__ unlikely (int ) ;
 int xfs_verify_dir_ino (int *,scalar_t__) ;
 int xfs_warn (int *,char*,unsigned long long) ;

int
xfs_dir_ino_validate(
 xfs_mount_t *mp,
 xfs_ino_t ino)
{
 bool ino_ok = xfs_verify_dir_ino(mp, ino);

 if (unlikely(XFS_TEST_ERROR(!ino_ok, mp, XFS_ERRTAG_DIR_INO_VALIDATE))) {
  xfs_warn(mp, "Invalid inode number 0x%Lx",
    (unsigned long long) ino);
  XFS_ERROR_REPORT("xfs_dir_ino_validate", XFS_ERRLEVEL_LOW, mp);
  return -EFSCORRUPTED;
 }
 return 0;
}
