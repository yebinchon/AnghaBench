
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECCOMP_RET_KILL_THREAD ;
 int SIGKILL ;
 int do_exit (int ) ;
 int dump_stack () ;
 int* get_compat_mode1_syscalls () ;
 scalar_t__ in_compat_syscall () ;
 int* mode1_syscalls ;
 int seccomp_log (int,int ,int ,int) ;

__attribute__((used)) static void __secure_computing_strict(int this_syscall)
{
 const int *syscall_whitelist = mode1_syscalls;




 do {
  if (*syscall_whitelist == this_syscall)
   return;
 } while (*++syscall_whitelist);




 seccomp_log(this_syscall, SIGKILL, SECCOMP_RET_KILL_THREAD, 1);
 do_exit(SIGKILL);
}
