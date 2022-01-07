
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_runtime {int dummy; } ;
struct thread {int dummy; } ;


 int pr_debug (char*) ;
 struct thread_runtime* thread__init_runtime (struct thread*) ;
 struct thread_runtime* thread__priv (struct thread*) ;

__attribute__((used)) static struct thread_runtime *thread__get_runtime(struct thread *thread)
{
 struct thread_runtime *tr;

 tr = thread__priv(thread);
 if (tr == ((void*)0)) {
  tr = thread__init_runtime(thread);
  if (tr == ((void*)0))
   pr_debug("Failed to malloc memory for runtime data.\n");
 }

 return tr;
}
