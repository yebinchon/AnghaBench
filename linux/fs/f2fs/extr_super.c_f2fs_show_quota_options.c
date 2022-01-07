
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int s_jquota_fmt; scalar_t__* s_qf_names; } ;


 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 struct f2fs_sb_info* F2FS_SB (struct super_block*) ;
 size_t GRPQUOTA ;
 size_t PRJQUOTA ;



 size_t USRQUOTA ;
 int seq_printf (struct seq_file*,char*,char*) ;
 int seq_show_option (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static inline void f2fs_show_quota_options(struct seq_file *seq,
        struct super_block *sb)
{
}
