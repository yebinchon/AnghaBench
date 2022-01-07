
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int __u32 ;


 int FS_DIRSYNC_FL ;
 int FS_NOATIME_FL ;
 int FS_NODUMP_FL ;
 int FS_TOPDIR_FL ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;

__attribute__((used)) static inline __u32 nilfs_mask_flags(umode_t mode, __u32 flags)
{
 if (S_ISDIR(mode))
  return flags;
 else if (S_ISREG(mode))
  return flags & ~(FS_DIRSYNC_FL | FS_TOPDIR_FL);
 else
  return flags & (FS_NODUMP_FL | FS_NOATIME_FL);
}
