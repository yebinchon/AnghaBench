
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int __u32 ;


 int F2FS_OTHER_FLMASK ;
 int F2FS_REG_FLMASK ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;

__attribute__((used)) static inline __u32 f2fs_mask_flags(umode_t mode, __u32 flags)
{
 if (S_ISDIR(mode))
  return flags;
 else if (S_ISREG(mode))
  return flags & F2FS_REG_FLMASK;
 else
  return flags & F2FS_OTHER_FLMASK;
}
