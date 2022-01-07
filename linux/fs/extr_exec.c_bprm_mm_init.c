
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct linux_binprm {struct mm_struct* mm; int rlim_stack; } ;
struct TYPE_4__ {int group_leader; TYPE_1__* signal; } ;
struct TYPE_3__ {int * rlim; } ;


 int ENOMEM ;
 size_t RLIMIT_STACK ;
 int __bprm_mm_init (struct linux_binprm*) ;
 TYPE_2__* current ;
 struct mm_struct* mm_alloc () ;
 int mmdrop (struct mm_struct*) ;
 int task_lock (int ) ;
 int task_unlock (int ) ;

__attribute__((used)) static int bprm_mm_init(struct linux_binprm *bprm)
{
 int err;
 struct mm_struct *mm = ((void*)0);

 bprm->mm = mm = mm_alloc();
 err = -ENOMEM;
 if (!mm)
  goto err;


 task_lock(current->group_leader);
 bprm->rlim_stack = current->signal->rlim[RLIMIT_STACK];
 task_unlock(current->group_leader);

 err = __bprm_mm_init(bprm);
 if (err)
  goto err;

 return 0;

err:
 if (mm) {
  bprm->mm = ((void*)0);
  mmdrop(mm);
 }

 return err;
}
