
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {int discard_granularity; int discard_wake; int discard_wait_queue; int cmd_lock; int * pend_list; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 int DISCARD_TIME ;
 int MAX_PLIST_NUM ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int is_idle (struct f2fs_sb_info*,int ) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static inline void wake_up_discard_thread(struct f2fs_sb_info *sbi, bool force)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
 bool wakeup = 0;
 int i;

 if (force)
  goto wake_up;

 mutex_lock(&dcc->cmd_lock);
 for (i = MAX_PLIST_NUM - 1; i >= 0; i--) {
  if (i + 1 < dcc->discard_granularity)
   break;
  if (!list_empty(&dcc->pend_list[i])) {
   wakeup = 1;
   break;
  }
 }
 mutex_unlock(&dcc->cmd_lock);
 if (!wakeup || !is_idle(sbi, DISCARD_TIME))
  return;
wake_up:
 dcc->discard_wake = 1;
 wake_up_interruptible_all(&dcc->discard_wait_queue);
}
