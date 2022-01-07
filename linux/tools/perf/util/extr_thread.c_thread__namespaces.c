
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int namespaces_lock; } ;
struct namespaces {int dummy; } ;


 struct namespaces* __thread__namespaces (struct thread*) ;
 int down_read (int *) ;
 int up_read (int *) ;

struct namespaces *thread__namespaces(struct thread *thread)
{
 struct namespaces *ns;

 down_read(&thread->namespaces_lock);
 ns = __thread__namespaces(thread);
 up_read(&thread->namespaces_lock);

 return ns;
}
