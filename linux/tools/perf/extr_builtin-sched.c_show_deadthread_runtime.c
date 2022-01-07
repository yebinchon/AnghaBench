
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dead; } ;


 int __show_thread_runtime (struct thread*,void*) ;

__attribute__((used)) static int show_deadthread_runtime(struct thread *t, void *priv)
{
 if (!t->dead)
  return 0;

 return __show_thread_runtime(t, priv);
}
