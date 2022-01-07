
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct linux_binprm {int per_clear; int * mm; int file; } ;
struct TYPE_3__ {int flags; int files; int personality; } ;


 int PF_FORKNOEXEC ;
 int PF_KTHREAD ;
 int PF_NOFREEZE ;
 int PF_NO_SETAFFINITY ;
 int PF_RANDOMIZE ;
 int USER_DS ;
 int acct_arg_size (struct linux_binprm*,int ) ;
 TYPE_1__* current ;
 int de_thread (TYPE_1__*) ;
 int do_close_on_exec (int ) ;
 int exec_mmap (int *) ;
 int flush_thread () ;
 int set_fs (int ) ;
 int set_mm_exe_file (int *,int ) ;

int flush_old_exec(struct linux_binprm * bprm)
{
 int retval;





 retval = de_thread(current);
 if (retval)
  goto out;






 set_mm_exe_file(bprm->mm, bprm->file);




 acct_arg_size(bprm, 0);
 retval = exec_mmap(bprm->mm);
 if (retval)
  goto out;







 bprm->mm = ((void*)0);

 set_fs(USER_DS);
 current->flags &= ~(PF_RANDOMIZE | PF_FORKNOEXEC | PF_KTHREAD |
     PF_NOFREEZE | PF_NO_SETAFFINITY);
 flush_thread();
 current->personality &= ~bprm->per_clear;







 do_close_on_exec(current->files);
 return 0;

out:
 return retval;
}
