
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {struct f2fs_gc_kthread* gc_thread; TYPE_2__* sb; } ;
struct f2fs_gc_kthread {int f2fs_gc_task; int gc_wait_queue_head; scalar_t__ gc_wake; int no_gc_sleep_time; int max_sleep_time; int min_sleep_time; int urgent_sleep_time; } ;
typedef int dev_t ;
struct TYPE_4__ {TYPE_1__* s_bdev; } ;
struct TYPE_3__ {int bd_dev; } ;


 int DEF_GC_THREAD_MAX_SLEEP_TIME ;
 int DEF_GC_THREAD_MIN_SLEEP_TIME ;
 int DEF_GC_THREAD_NOGC_SLEEP_TIME ;
 int DEF_GC_THREAD_URGENT_SLEEP_TIME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int PTR_ERR (int ) ;
 struct f2fs_gc_kthread* f2fs_kmalloc (struct f2fs_sb_info*,int,int ) ;
 int gc_thread_func ;
 int init_waitqueue_head (int *) ;
 int kthread_run (int ,struct f2fs_sb_info*,char*,int ,int ) ;
 int kvfree (struct f2fs_gc_kthread*) ;

int f2fs_start_gc_thread(struct f2fs_sb_info *sbi)
{
 struct f2fs_gc_kthread *gc_th;
 dev_t dev = sbi->sb->s_bdev->bd_dev;
 int err = 0;

 gc_th = f2fs_kmalloc(sbi, sizeof(struct f2fs_gc_kthread), GFP_KERNEL);
 if (!gc_th) {
  err = -ENOMEM;
  goto out;
 }

 gc_th->urgent_sleep_time = DEF_GC_THREAD_URGENT_SLEEP_TIME;
 gc_th->min_sleep_time = DEF_GC_THREAD_MIN_SLEEP_TIME;
 gc_th->max_sleep_time = DEF_GC_THREAD_MAX_SLEEP_TIME;
 gc_th->no_gc_sleep_time = DEF_GC_THREAD_NOGC_SLEEP_TIME;

 gc_th->gc_wake= 0;

 sbi->gc_thread = gc_th;
 init_waitqueue_head(&sbi->gc_thread->gc_wait_queue_head);
 sbi->gc_thread->f2fs_gc_task = kthread_run(gc_thread_func, sbi,
   "f2fs_gc-%u:%u", MAJOR(dev), MINOR(dev));
 if (IS_ERR(gc_th->f2fs_gc_task)) {
  err = PTR_ERR(gc_th->f2fs_gc_task);
  kvfree(gc_th);
  sbi->gc_thread = ((void*)0);
 }
out:
 return err;
}
