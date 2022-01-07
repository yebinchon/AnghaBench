
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int host; } ;
struct perf_session {TYPE_1__ machines; } ;


 struct thread* machine__findnew_thread (int *,int ,int ) ;
 int pr_err (char*) ;
 int thread__put (struct thread*) ;
 scalar_t__ thread__set_comm (struct thread*,char*,int ) ;
 scalar_t__ thread__set_namespaces (struct thread*,int ,int *) ;

int perf_session__register_idle_thread(struct perf_session *session)
{
 struct thread *thread;
 int err = 0;

 thread = machine__findnew_thread(&session->machines.host, 0, 0);
 if (thread == ((void*)0) || thread__set_comm(thread, "swapper", 0)) {
  pr_err("problem inserting idle task.\n");
  err = -1;
 }

 if (thread == ((void*)0) || thread__set_namespaces(thread, 0, ((void*)0))) {
  pr_err("problem inserting idle task.\n");
  err = -1;
 }


 thread__put(thread);
 return err;
}
