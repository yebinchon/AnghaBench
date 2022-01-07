
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int refcnt; } ;


 int refcount_inc (int *) ;

struct thread *thread__get(struct thread *thread)
{
 if (thread)
  refcount_inc(&thread->refcnt);
 return thread;
}
