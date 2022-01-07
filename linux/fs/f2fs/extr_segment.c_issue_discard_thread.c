
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct f2fs_sb_info {scalar_t__ gc_mode; int sb; } ;
struct discard_policy {unsigned int max_interval; unsigned int min_interval; unsigned int mid_interval; } ;
struct discard_cmd_control {int discard_granularity; int queued_discard; scalar_t__ discard_wake; int discard_wait_queue; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 unsigned int DEF_MIN_DISCARD_ISSUE_TIME ;
 int DISCARD_TIME ;
 int DPOLICY_BG ;
 int DPOLICY_FORCE ;
 scalar_t__ GC_URGENT ;
 int SBI_NEED_FSCK ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int __init_discard_policy (struct f2fs_sb_info*,struct discard_policy*,int ,int) ;
 int __issue_discard_cmd (struct f2fs_sb_info*,struct discard_policy*) ;
 int __wait_all_discard_cmd (struct f2fs_sb_info*,struct discard_policy*) ;
 scalar_t__ atomic_read (int *) ;
 int current ;
 scalar_t__ f2fs_readonly (int ) ;
 unsigned int f2fs_time_to_wait (struct f2fs_sb_info*,int ) ;
 scalar_t__ freezing (int ) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ kthread_should_stop () ;
 int msecs_to_jiffies (unsigned int) ;
 int sb_end_intwrite (int ) ;
 int sb_start_intwrite (int ) ;
 int set_freezable () ;
 scalar_t__ try_to_freeze () ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int issue_discard_thread(void *data)
{
 struct f2fs_sb_info *sbi = data;
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
 wait_queue_head_t *q = &dcc->discard_wait_queue;
 struct discard_policy dpolicy;
 unsigned int wait_ms = DEF_MIN_DISCARD_ISSUE_TIME;
 int issued;

 set_freezable();

 do {
  __init_discard_policy(sbi, &dpolicy, DPOLICY_BG,
     dcc->discard_granularity);

  wait_event_interruptible_timeout(*q,
    kthread_should_stop() || freezing(current) ||
    dcc->discard_wake,
    msecs_to_jiffies(wait_ms));

  if (dcc->discard_wake)
   dcc->discard_wake = 0;


  if (atomic_read(&dcc->queued_discard))
   __wait_all_discard_cmd(sbi, ((void*)0));

  if (try_to_freeze())
   continue;
  if (f2fs_readonly(sbi->sb))
   continue;
  if (kthread_should_stop())
   return 0;
  if (is_sbi_flag_set(sbi, SBI_NEED_FSCK)) {
   wait_ms = dpolicy.max_interval;
   continue;
  }

  if (sbi->gc_mode == GC_URGENT)
   __init_discard_policy(sbi, &dpolicy, DPOLICY_FORCE, 1);

  sb_start_intwrite(sbi->sb);

  issued = __issue_discard_cmd(sbi, &dpolicy);
  if (issued > 0) {
   __wait_all_discard_cmd(sbi, &dpolicy);
   wait_ms = dpolicy.min_interval;
  } else if (issued == -1){
   wait_ms = f2fs_time_to_wait(sbi, DISCARD_TIME);
   if (!wait_ms)
    wait_ms = dpolicy.mid_interval;
  } else {
   wait_ms = dpolicy.max_interval;
  }

  sb_end_intwrite(sbi->sb);

 } while (!kthread_should_stop());
 return 0;
}
