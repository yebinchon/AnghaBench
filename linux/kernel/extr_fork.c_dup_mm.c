
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct mm_struct {TYPE_1__* binfmt; int total_vm; int hiwater_vm; int hiwater_rss; int user_ns; } ;
struct TYPE_2__ {int module; } ;


 struct mm_struct* allocate_mm () ;
 int dup_mmap (struct mm_struct*,struct mm_struct*) ;
 int get_mm_rss (struct mm_struct*) ;
 int memcpy (struct mm_struct*,struct mm_struct*,int) ;
 int mm_init (struct mm_struct*,struct task_struct*,int ) ;
 int mm_init_owner (struct mm_struct*,int *) ;
 int mmput (struct mm_struct*) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct mm_struct *dup_mm(struct task_struct *tsk,
    struct mm_struct *oldmm)
{
 struct mm_struct *mm;
 int err;

 mm = allocate_mm();
 if (!mm)
  goto fail_nomem;

 memcpy(mm, oldmm, sizeof(*mm));

 if (!mm_init(mm, tsk, mm->user_ns))
  goto fail_nomem;

 err = dup_mmap(mm, oldmm);
 if (err)
  goto free_pt;

 mm->hiwater_rss = get_mm_rss(mm);
 mm->hiwater_vm = mm->total_vm;

 if (mm->binfmt && !try_module_get(mm->binfmt->module))
  goto free_pt;

 return mm;

free_pt:

 mm->binfmt = ((void*)0);
 mm_init_owner(mm, ((void*)0));
 mmput(mm);

fail_nomem:
 return ((void*)0);
}
