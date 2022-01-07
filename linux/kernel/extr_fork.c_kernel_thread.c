
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_clone_args {unsigned long flags; unsigned long exit_signal; unsigned long stack; unsigned long stack_size; } ;
typedef int pid_t ;


 unsigned long CLONE_UNTRACED ;
 unsigned long CLONE_VM ;
 unsigned long CSIGNAL ;
 int _do_fork (struct kernel_clone_args*) ;

pid_t kernel_thread(int (*fn)(void *), void *arg, unsigned long flags)
{
 struct kernel_clone_args args = {
  .flags = ((flags | CLONE_VM | CLONE_UNTRACED) & ~CSIGNAL),
  .exit_signal = (flags & CSIGNAL),
  .stack = (unsigned long)fn,
  .stack_size = (unsigned long)arg,
 };

 return _do_fork(&args);
}
