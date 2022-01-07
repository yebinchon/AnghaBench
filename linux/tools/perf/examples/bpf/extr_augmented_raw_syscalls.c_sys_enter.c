
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syscall_enter_args {int dummy; } ;
struct syscall {int dummy; } ;
struct TYPE_2__ {int syscall_nr; } ;
struct augmented_args_payload {TYPE_1__ args; } ;


 struct augmented_args_payload* augmented_args_payload () ;
 int bpf_tail_call (struct syscall_enter_args*,int *,int ) ;
 int getpid () ;
 scalar_t__ pid_filter__has (int *,int ) ;
 int pids_filtered ;
 int probe_read (TYPE_1__*,int,struct syscall_enter_args*) ;
 int syscalls_sys_enter ;

int sys_enter(struct syscall_enter_args *args)
{
 struct augmented_args_payload *augmented_args;
 unsigned int len = sizeof(augmented_args->args);
 struct syscall *syscall;

 if (pid_filter__has(&pids_filtered, getpid()))
  return 0;

 augmented_args = augmented_args_payload();
 if (augmented_args == ((void*)0))
  return 1;

 probe_read(&augmented_args->args, sizeof(augmented_args->args), args);






 bpf_tail_call(args, &syscalls_sys_enter, augmented_args->args.syscall_nr);


 return 0;
}
