
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_4__ {int metacopy; } ;
struct ovl_fs {TYPE_2__ config; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_3__ {struct ovl_fs* s_fs_info; } ;


 int FMODE_WRITE ;
 int OPEN_FMODE (int) ;
 int O_TRUNC ;
 int S_ISREG (int ) ;

__attribute__((used)) static bool ovl_need_meta_copy_up(struct dentry *dentry, umode_t mode,
      int flags)
{
 struct ovl_fs *ofs = dentry->d_sb->s_fs_info;

 if (!ofs->config.metacopy)
  return 0;

 if (!S_ISREG(mode))
  return 0;

 if (flags && ((OPEN_FMODE(flags) & FMODE_WRITE) || (flags & O_TRUNC)))
  return 0;

 return 1;
}
