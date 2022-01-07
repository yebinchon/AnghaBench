
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ rlim_cur; } ;
struct linux_binprm {int secureexec; int cap_elevated; int interp_flags; int filename; TYPE_5__ rlim_stack; } ;
struct TYPE_8__ {int self_exec_id; TYPE_1__* mm; scalar_t__ sas_ss_size; scalar_t__ sas_ss_sp; scalar_t__ pdeath_signal; } ;
struct TYPE_7__ {int task_size; } ;


 int BINPRM_FLAGS_ENFORCE_NONDUMP ;
 int SUID_DUMP_USER ;
 int TASK_SIZE ;
 scalar_t__ _STK_LIM ;
 int __set_task_comm (TYPE_2__*,int ,int) ;
 int arch_pick_mmap_layout (TYPE_1__*,TYPE_5__*) ;
 int arch_setup_new_exec () ;
 TYPE_2__* current ;
 int current_egid () ;
 int current_euid () ;
 int current_gid () ;
 int current_uid () ;
 int flush_signal_handlers (TYPE_2__*,int ) ;
 scalar_t__ gid_eq (int ,int ) ;
 int kbasename (int ) ;
 int perf_event_exec () ;
 int set_dumpable (TYPE_1__*,int ) ;
 int suid_dumpable ;
 scalar_t__ uid_eq (int ,int ) ;

void setup_new_exec(struct linux_binprm * bprm)
{





 bprm->secureexec |= bprm->cap_elevated;

 if (bprm->secureexec) {

  current->pdeath_signal = 0;
  if (bprm->rlim_stack.rlim_cur > _STK_LIM)
   bprm->rlim_stack.rlim_cur = _STK_LIM;
 }

 arch_pick_mmap_layout(current->mm, &bprm->rlim_stack);

 current->sas_ss_sp = current->sas_ss_size = 0;






 if (bprm->interp_flags & BINPRM_FLAGS_ENFORCE_NONDUMP ||
     !(uid_eq(current_euid(), current_uid()) &&
       gid_eq(current_egid(), current_gid())))
  set_dumpable(current->mm, suid_dumpable);
 else
  set_dumpable(current->mm, SUID_DUMP_USER);

 arch_setup_new_exec();
 perf_event_exec();
 __set_task_comm(current, kbasename(bprm->filename), 1);





 current->mm->task_size = TASK_SIZE;



 current->self_exec_id++;
 flush_signal_handlers(current, 0);
}
