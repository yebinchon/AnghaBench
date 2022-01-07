
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct mm_struct* active_mm; struct mm_struct* mm; scalar_t__ last_switch_time; scalar_t__ nivcsw; scalar_t__ nvcsw; scalar_t__ last_switch_count; scalar_t__ maj_flt; scalar_t__ min_flt; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long CLONE_VM ;
 int ENOMEM ;
 TYPE_1__* current ;
 struct mm_struct* dup_mm (struct task_struct*,struct mm_struct*) ;
 int mmget (struct mm_struct*) ;
 int vmacache_flush (struct task_struct*) ;

__attribute__((used)) static int copy_mm(unsigned long clone_flags, struct task_struct *tsk)
{
 struct mm_struct *mm, *oldmm;
 int retval;

 tsk->min_flt = tsk->maj_flt = 0;
 tsk->nvcsw = tsk->nivcsw = 0;





 tsk->mm = ((void*)0);
 tsk->active_mm = ((void*)0);






 oldmm = current->mm;
 if (!oldmm)
  return 0;


 vmacache_flush(tsk);

 if (clone_flags & CLONE_VM) {
  mmget(oldmm);
  mm = oldmm;
  goto good_mm;
 }

 retval = -ENOMEM;
 mm = dup_mm(tsk, current->mm);
 if (!mm)
  goto fail_nomem;

good_mm:
 tsk->mm = mm;
 tsk->active_mm = mm;
 return 0;

fail_nomem:
 return retval;
}
