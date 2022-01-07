
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__* s_qf_names; } ;


 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 size_t GRPQUOTA ;
 size_t PRJQUOTA ;
 size_t USRQUOTA ;
 scalar_t__ f2fs_sb_has_quota_ino (struct f2fs_sb_info*) ;

__attribute__((used)) static inline bool is_journalled_quota(struct f2fs_sb_info *sbi)
{
 return 0;
}
