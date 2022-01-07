
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {struct f2fs_gc_kthread* gc_thread; } ;
struct f2fs_gc_kthread {int f2fs_gc_task; } ;


 int kthread_stop (int ) ;
 int kvfree (struct f2fs_gc_kthread*) ;

void f2fs_stop_gc_thread(struct f2fs_sb_info *sbi)
{
 struct f2fs_gc_kthread *gc_th = sbi->gc_thread;
 if (!gc_th)
  return;
 kthread_stop(gc_th->f2fs_gc_task);
 kvfree(gc_th);
 sbi->gc_thread = ((void*)0);
}
