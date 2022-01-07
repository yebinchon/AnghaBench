
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct fsxattr {int fsx_xflags; scalar_t__ fsx_projid; scalar_t__ fsx_extsize; scalar_t__ fsx_cowextsize; } ;


 int CAP_LINUX_IMMUTABLE ;
 int EINVAL ;
 int EPERM ;
 int FS_XFLAG_APPEND ;
 int FS_XFLAG_COWEXTSIZE ;
 int FS_XFLAG_DAX ;
 int FS_XFLAG_EXTSIZE ;
 int FS_XFLAG_EXTSZINHERIT ;
 int FS_XFLAG_IMMUTABLE ;
 int FS_XFLAG_PROJINHERIT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int capable (int ) ;
 int * current_user_ns () ;
 int init_user_ns ;

int vfs_ioc_fssetxattr_check(struct inode *inode, const struct fsxattr *old_fa,
        struct fsxattr *fa)
{




 if ((old_fa->fsx_xflags ^ fa->fsx_xflags) &
   (FS_XFLAG_IMMUTABLE | FS_XFLAG_APPEND) &&
     !capable(CAP_LINUX_IMMUTABLE))
  return -EPERM;






 if (current_user_ns() != &init_user_ns) {
  if (old_fa->fsx_projid != fa->fsx_projid)
   return -EINVAL;
  if ((old_fa->fsx_xflags ^ fa->fsx_xflags) &
    FS_XFLAG_PROJINHERIT)
   return -EINVAL;
 }


 if ((fa->fsx_xflags & FS_XFLAG_EXTSIZE) && !S_ISREG(inode->i_mode))
  return -EINVAL;

 if ((fa->fsx_xflags & FS_XFLAG_EXTSZINHERIT) &&
   !S_ISDIR(inode->i_mode))
  return -EINVAL;

 if ((fa->fsx_xflags & FS_XFLAG_COWEXTSIZE) &&
     !S_ISREG(inode->i_mode) && !S_ISDIR(inode->i_mode))
  return -EINVAL;





 if ((fa->fsx_xflags & FS_XFLAG_DAX) &&
     !(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode)))
  return -EINVAL;


 if (fa->fsx_extsize == 0)
  fa->fsx_xflags &= ~(FS_XFLAG_EXTSIZE | FS_XFLAG_EXTSZINHERIT);
 if (fa->fsx_cowextsize == 0)
  fa->fsx_xflags &= ~FS_XFLAG_COWEXTSIZE;

 return 0;
}
