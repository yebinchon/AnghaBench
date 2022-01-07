
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_exit_args {int syscall_nr; } ;
typedef int exit_args ;


 int bpf_tail_call (struct syscall_exit_args*,int *,int ) ;
 int getpid () ;
 scalar_t__ pid_filter__has (int *,int ) ;
 int pids_filtered ;
 int probe_read (struct syscall_exit_args*,int,struct syscall_exit_args*) ;
 int syscalls_sys_exit ;

int sys_exit(struct syscall_exit_args *args)
{
 struct syscall_exit_args exit_args;

 if (pid_filter__has(&pids_filtered, getpid()))
  return 0;

 probe_read(&exit_args, sizeof(exit_args), args);





 bpf_tail_call(args, &syscalls_sys_exit, exit_args.syscall_nr);



 return 0;
}
