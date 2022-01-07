
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct f2fs_sb_info {scalar_t__ gc_mode; TYPE_2__* sb; int gc_mutex; struct f2fs_gc_kthread* gc_thread; } ;
struct f2fs_gc_kthread {unsigned int min_sleep_time; unsigned int urgent_sleep_time; unsigned int no_gc_sleep_time; scalar_t__ gc_wake; int gc_wait_queue_head; } ;
struct TYPE_5__ {scalar_t__ frozen; } ;
struct TYPE_6__ {TYPE_1__ s_writers; } ;


 int FAULT_CHECKPOINT ;
 int FORCE_FG_GC ;
 int GC_TIME ;
 scalar_t__ GC_URGENT ;
 int NULL_SEGNO ;
 scalar_t__ SB_FREEZE_WRITE ;
 int current ;
 int decrease_sleep_time (struct f2fs_gc_kthread*,unsigned int*) ;
 int f2fs_balance_fs_bg (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_gc (struct f2fs_sb_info*,int ,int,int ) ;
 int f2fs_show_injection_info (int ) ;
 int f2fs_stop_checkpoint (struct f2fs_sb_info*,int) ;
 int free_segments (struct f2fs_sb_info*) ;
 scalar_t__ freezing (int ) ;
 scalar_t__ has_enough_invalid_blocks (struct f2fs_sb_info*) ;
 int increase_sleep_time (struct f2fs_gc_kthread*,unsigned int*) ;
 int is_idle (struct f2fs_sb_info*,int ) ;
 scalar_t__ kthread_should_stop () ;
 int msecs_to_jiffies (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int prefree_segments (struct f2fs_sb_info*) ;
 int sb_end_write (TYPE_2__*) ;
 int sb_start_write_trylock (TYPE_2__*) ;
 int set_freezable () ;
 int stat_inc_bggc_count (struct f2fs_sb_info*) ;
 int stat_io_skip_bggc_count (struct f2fs_sb_info*) ;
 int stat_other_skip_bggc_count (struct f2fs_sb_info*) ;
 int test_opt (struct f2fs_sb_info*,int ) ;
 scalar_t__ time_to_inject (struct f2fs_sb_info*,int ) ;
 int trace_f2fs_background_gc (TYPE_2__*,unsigned int,int ,int ) ;
 scalar_t__ try_to_freeze () ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int gc_thread_func(void *data)
{
 struct f2fs_sb_info *sbi = data;
 struct f2fs_gc_kthread *gc_th = sbi->gc_thread;
 wait_queue_head_t *wq = &sbi->gc_thread->gc_wait_queue_head;
 unsigned int wait_ms;

 wait_ms = gc_th->min_sleep_time;

 set_freezable();
 do {
  wait_event_interruptible_timeout(*wq,
    kthread_should_stop() || freezing(current) ||
    gc_th->gc_wake,
    msecs_to_jiffies(wait_ms));


  if (gc_th->gc_wake)
   gc_th->gc_wake = 0;

  if (try_to_freeze()) {
   stat_other_skip_bggc_count(sbi);
   continue;
  }
  if (kthread_should_stop())
   break;

  if (sbi->sb->s_writers.frozen >= SB_FREEZE_WRITE) {
   increase_sleep_time(gc_th, &wait_ms);
   stat_other_skip_bggc_count(sbi);
   continue;
  }

  if (time_to_inject(sbi, FAULT_CHECKPOINT)) {
   f2fs_show_injection_info(FAULT_CHECKPOINT);
   f2fs_stop_checkpoint(sbi, 0);
  }

  if (!sb_start_write_trylock(sbi->sb)) {
   stat_other_skip_bggc_count(sbi);
   continue;
  }
  if (sbi->gc_mode == GC_URGENT) {
   wait_ms = gc_th->urgent_sleep_time;
   mutex_lock(&sbi->gc_mutex);
   goto do_gc;
  }

  if (!mutex_trylock(&sbi->gc_mutex)) {
   stat_other_skip_bggc_count(sbi);
   goto next;
  }

  if (!is_idle(sbi, GC_TIME)) {
   increase_sleep_time(gc_th, &wait_ms);
   mutex_unlock(&sbi->gc_mutex);
   stat_io_skip_bggc_count(sbi);
   goto next;
  }

  if (has_enough_invalid_blocks(sbi))
   decrease_sleep_time(gc_th, &wait_ms);
  else
   increase_sleep_time(gc_th, &wait_ms);
do_gc:
  stat_inc_bggc_count(sbi);


  if (f2fs_gc(sbi, test_opt(sbi, FORCE_FG_GC), 1, NULL_SEGNO))
   wait_ms = gc_th->no_gc_sleep_time;

  trace_f2fs_background_gc(sbi->sb, wait_ms,
    prefree_segments(sbi), free_segments(sbi));


  f2fs_balance_fs_bg(sbi);
next:
  sb_end_write(sbi->sb);

 } while (!kthread_should_stop());
 return 0;
}
