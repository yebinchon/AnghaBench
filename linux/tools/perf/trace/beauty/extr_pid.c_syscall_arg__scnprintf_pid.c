
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {int host; } ;
struct thread {scalar_t__ comm_set; } ;
struct syscall_arg {int val; struct trace* trace; } ;


 struct thread* machine__findnew_thread (int ,int,int) ;
 size_t scnprintf (char*,size_t,char*,int) ;
 int thread__comm_str (struct thread*) ;
 int thread__put (struct thread*) ;
 int thread__set_comm_from_proc (struct thread*) ;

size_t syscall_arg__scnprintf_pid(char *bf, size_t size, struct syscall_arg *arg)
{
 int pid = arg->val;
 struct trace *trace = arg->trace;
 size_t printed = scnprintf(bf, size, "%d", pid);
 struct thread *thread = machine__findnew_thread(trace->host, pid, pid);

 if (thread != ((void*)0)) {
  if (!thread->comm_set)
   thread__set_comm_from_proc(thread);

  if (thread->comm_set)
   printed += scnprintf(bf + printed, size - printed,
          " (%s)", thread__comm_str(thread));
  thread__put(thread);
 }

 return printed;
}
