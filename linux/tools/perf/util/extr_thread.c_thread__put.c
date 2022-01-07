
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int node; int refcnt; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int thread__delete (struct thread*) ;

void thread__put(struct thread *thread)
{
 if (thread && refcount_dec_and_test(&thread->refcnt)) {
  if (!list_empty(&thread->node))
   list_del_init(&thread->node);
  thread__delete(thread);
 }
}
