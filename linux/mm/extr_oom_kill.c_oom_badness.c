
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {TYPE_2__* mm; TYPE_1__* signal; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ oom_score_adj; } ;


 int MMF_OOM_SKIP ;
 int MM_SWAPENTS ;
 long OOM_SCORE_ADJ_MIN ;
 long PAGE_SIZE ;
 struct task_struct* find_lock_task_mm (struct task_struct*) ;
 long get_mm_counter (TYPE_2__*,int ) ;
 long get_mm_rss (TYPE_2__*) ;
 scalar_t__ in_vfork (struct task_struct*) ;
 long mm_pgtables_bytes (TYPE_2__*) ;
 scalar_t__ oom_unkillable_task (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 scalar_t__ test_bit (int ,int *) ;

unsigned long oom_badness(struct task_struct *p, unsigned long totalpages)
{
 long points;
 long adj;

 if (oom_unkillable_task(p))
  return 0;

 p = find_lock_task_mm(p);
 if (!p)
  return 0;






 adj = (long)p->signal->oom_score_adj;
 if (adj == OOM_SCORE_ADJ_MIN ||
   test_bit(MMF_OOM_SKIP, &p->mm->flags) ||
   in_vfork(p)) {
  task_unlock(p);
  return 0;
 }





 points = get_mm_rss(p->mm) + get_mm_counter(p->mm, MM_SWAPENTS) +
  mm_pgtables_bytes(p->mm) / PAGE_SIZE;
 task_unlock(p);


 adj *= totalpages / 1000;
 points += adj;





 return points > 0 ? points : 1;
}
