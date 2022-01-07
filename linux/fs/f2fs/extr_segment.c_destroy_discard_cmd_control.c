
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {int discard_cmd_cnt; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int atomic_read (int *) ;
 int f2fs_issue_discard_timeout (struct f2fs_sb_info*) ;
 int f2fs_stop_discard_thread (struct f2fs_sb_info*) ;
 int kvfree (struct discard_cmd_control*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void destroy_discard_cmd_control(struct f2fs_sb_info *sbi)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;

 if (!dcc)
  return;

 f2fs_stop_discard_thread(sbi);





 if (unlikely(atomic_read(&dcc->discard_cmd_cnt)))
  f2fs_issue_discard_timeout(sbi);

 kvfree(dcc);
 SM_I(sbi)->dcc_info = ((void*)0);
}
