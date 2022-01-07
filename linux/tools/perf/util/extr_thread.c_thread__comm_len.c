
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int comm_len; } ;


 int strlen (char const*) ;
 char* thread__comm_str (struct thread*) ;

int thread__comm_len(struct thread *thread)
{
 if (!thread->comm_len) {
  const char *comm = thread__comm_str(thread);
  if (!comm)
   return 0;
  thread->comm_len = strlen(comm);
 }

 return thread->comm_len;
}
