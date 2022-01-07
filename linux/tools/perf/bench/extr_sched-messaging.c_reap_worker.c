
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int WIFEXITED (int) ;
 int exit (int) ;
 int pthread_join (int ,void**) ;
 int thread_mode ;
 int wait (int*) ;

__attribute__((used)) static void reap_worker(pthread_t id)
{
 int proc_status;
 void *thread_status;

 if (!thread_mode) {

  wait(&proc_status);
  if (!WIFEXITED(proc_status))
   exit(1);
 } else {
  pthread_join(id, &thread_status);
 }
}
