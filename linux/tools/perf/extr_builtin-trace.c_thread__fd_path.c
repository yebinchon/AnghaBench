
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int proc_getname; } ;
struct trace {TYPE_1__ stats; int live; scalar_t__ fd_path_disabled; } ;
struct TYPE_6__ {int max; TYPE_2__* table; } ;
struct thread_trace {TYPE_3__ files; } ;
struct thread {int dummy; } ;
struct TYPE_5__ {char const* pathname; } ;


 struct thread_trace* thread__priv (struct thread*) ;
 scalar_t__ thread__read_fd_path (struct thread*,int) ;

__attribute__((used)) static const char *thread__fd_path(struct thread *thread, int fd,
       struct trace *trace)
{
 struct thread_trace *ttrace = thread__priv(thread);

 if (ttrace == ((void*)0) || trace->fd_path_disabled)
  return ((void*)0);

 if (fd < 0)
  return ((void*)0);

 if ((fd > ttrace->files.max || ttrace->files.table[fd].pathname == ((void*)0))) {
  if (!trace->live)
   return ((void*)0);
  ++trace->stats.proc_getname;
  if (thread__read_fd_path(thread, fd))
   return ((void*)0);
 }

 return ttrace->files.table[fd].pathname;
}
