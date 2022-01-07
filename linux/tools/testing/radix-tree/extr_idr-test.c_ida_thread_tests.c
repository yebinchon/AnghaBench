
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int ARRAY_SIZE (int *) ;
 int exit (int) ;
 int ida_random_fn ;
 int perror (char*) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;

void ida_thread_tests(void)
{
 pthread_t threads[20];
 int i;

 for (i = 0; i < ARRAY_SIZE(threads); i++)
  if (pthread_create(&threads[i], ((void*)0), ida_random_fn, ((void*)0))) {
   perror("creating ida thread");
   exit(1);
  }

 while (i--)
  pthread_join(threads[i], ((void*)0));
}
