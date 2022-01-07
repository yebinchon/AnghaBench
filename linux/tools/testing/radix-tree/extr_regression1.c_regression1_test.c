
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int exit (int) ;
 int free (int *) ;
 int * malloc (int) ;
 int perror (char*) ;
 int printv (int,char*) ;
 int pthread_barrier_init (int *,int *,int) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 int regression1_fn ;
 int * threads ;
 int worker_barrier ;

void regression1_test(void)
{
 int nr_threads;
 int i;
 long arg;


 printv(1, "running regression test 1, should finish in under a minute\n");
 nr_threads = 2;
 pthread_barrier_init(&worker_barrier, ((void*)0), nr_threads);

 threads = malloc(nr_threads * sizeof(pthread_t *));

 for (i = 0; i < nr_threads; i++) {
  arg = i;
  if (pthread_create(&threads[i], ((void*)0), regression1_fn, (void *)arg)) {
   perror("pthread_create");
   exit(1);
  }
 }

 for (i = 0; i < nr_threads; i++) {
  if (pthread_join(threads[i], ((void*)0))) {
   perror("pthread_join");
   exit(1);
  }
 }

 free(threads);

 printv(1, "regression test 1, done\n");
}
