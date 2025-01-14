
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; TYPE_2__* table; } ;
struct thread_trace {TYPE_1__ files; } ;
struct syscall_arg {int val; int thread; } ;
struct TYPE_4__ {int pathname; } ;


 size_t syscall_arg__scnprintf_fd (char*,size_t,struct syscall_arg*) ;
 struct thread_trace* thread__priv (int ) ;
 int zfree (int *) ;

__attribute__((used)) static size_t syscall_arg__scnprintf_close_fd(char *bf, size_t size,
           struct syscall_arg *arg)
{
 int fd = arg->val;
 size_t printed = syscall_arg__scnprintf_fd(bf, size, arg);
 struct thread_trace *ttrace = thread__priv(arg->thread);

 if (ttrace && fd >= 0 && fd <= ttrace->files.max)
  zfree(&ttrace->files.table[fd].pathname);

 return printed;
}
