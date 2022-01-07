
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_trace {size_t (* ret_scnprintf ) (char*,size_t,struct syscall_arg*) ;} ;
struct syscall_arg {int thread; } ;


 struct thread_trace* thread__priv (int ) ;

void syscall_arg__set_ret_scnprintf(struct syscall_arg *arg,
        size_t (*ret_scnprintf)(char *bf, size_t size, struct syscall_arg *arg))
{
 struct thread_trace *ttrace = thread__priv(arg->thread);

 ttrace->ret_scnprintf = ret_scnprintf;
}
