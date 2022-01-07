
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int comm_lock; } ;


 char* __thread__comm_str (struct thread*) ;
 int down_read (int *) ;
 int up_read (int *) ;

const char *thread__comm_str(struct thread *thread)
{
 const char *str;

 down_read(&thread->comm_lock);
 str = __thread__comm_str(thread);
 up_read(&thread->comm_lock);

 return str;
}
