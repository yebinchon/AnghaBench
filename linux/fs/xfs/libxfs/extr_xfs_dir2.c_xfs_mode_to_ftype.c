
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IFMT ;


 unsigned char XFS_DIR3_FT_BLKDEV ;
 unsigned char XFS_DIR3_FT_CHRDEV ;
 unsigned char XFS_DIR3_FT_DIR ;
 unsigned char XFS_DIR3_FT_FIFO ;
 unsigned char XFS_DIR3_FT_REG_FILE ;
 unsigned char XFS_DIR3_FT_SOCK ;
 unsigned char XFS_DIR3_FT_SYMLINK ;
 unsigned char XFS_DIR3_FT_UNKNOWN ;

unsigned char
xfs_mode_to_ftype(
 int mode)
{
 switch (mode & S_IFMT) {
 case 129:
  return XFS_DIR3_FT_REG_FILE;
 case 132:
  return XFS_DIR3_FT_DIR;
 case 133:
  return XFS_DIR3_FT_CHRDEV;
 case 134:
  return XFS_DIR3_FT_BLKDEV;
 case 131:
  return XFS_DIR3_FT_FIFO;
 case 128:
  return XFS_DIR3_FT_SOCK;
 case 130:
  return XFS_DIR3_FT_SYMLINK;
 default:
  return XFS_DIR3_FT_UNKNOWN;
 }
}
