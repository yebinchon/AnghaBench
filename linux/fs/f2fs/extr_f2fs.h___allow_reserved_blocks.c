
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int s_resgid; int s_resuid; } ;


 int CAP_SYS_RESOURCE ;
 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 int GLOBAL_ROOT_GID ;
 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int RESERVE_ROOT ;
 scalar_t__ capable (int ) ;
 int current_fsuid () ;
 int gid_eq (int ,int ) ;
 scalar_t__ in_group_p (int ) ;
 int test_opt (struct f2fs_sb_info*,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static inline bool __allow_reserved_blocks(struct f2fs_sb_info *sbi,
     struct inode *inode, bool cap)
{
 if (!inode)
  return 1;
 if (!test_opt(sbi, RESERVE_ROOT))
  return 0;
 if (IS_NOQUOTA(inode))
  return 1;
 if (uid_eq(F2FS_OPTION(sbi).s_resuid, current_fsuid()))
  return 1;
 if (!gid_eq(F2FS_OPTION(sbi).s_resgid, GLOBAL_ROOT_GID) &&
     in_group_p(F2FS_OPTION(sbi).s_resgid))
  return 1;
 if (cap && capable(CAP_SYS_RESOURCE))
  return 1;
 return 0;
}
