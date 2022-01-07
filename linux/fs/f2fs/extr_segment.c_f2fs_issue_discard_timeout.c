
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct discard_policy {int timeout; } ;
struct discard_cmd_control {int discard_cmd_cnt; int discard_granularity; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 int DPOLICY_UMOUNT ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int UMOUNT_DISCARD_TIMEOUT ;
 int __drop_discard_cmd (struct f2fs_sb_info*) ;
 int __init_discard_policy (struct f2fs_sb_info*,struct discard_policy*,int ,int ) ;
 int __issue_discard_cmd (struct f2fs_sb_info*,struct discard_policy*) ;
 int __wait_all_discard_cmd (struct f2fs_sb_info*,int *) ;
 int atomic_read (int *) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int ) ;

bool f2fs_issue_discard_timeout(struct f2fs_sb_info *sbi)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
 struct discard_policy dpolicy;
 bool dropped;

 __init_discard_policy(sbi, &dpolicy, DPOLICY_UMOUNT,
     dcc->discard_granularity);
 dpolicy.timeout = UMOUNT_DISCARD_TIMEOUT;
 __issue_discard_cmd(sbi, &dpolicy);
 dropped = __drop_discard_cmd(sbi);


 __wait_all_discard_cmd(sbi, ((void*)0));

 f2fs_bug_on(sbi, atomic_read(&dcc->discard_cmd_cnt));
 return dropped;
}
