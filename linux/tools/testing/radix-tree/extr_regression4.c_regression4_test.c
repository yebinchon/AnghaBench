
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int exit (int) ;
 int mt_tree ;
 int obj0 ;
 int perror (char*) ;
 int printv (int,char*) ;
 int pthread_barrier_init (int *,int *,int) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 int radix_tree_insert (int *,int ,int *) ;
 int reader_fn ;
 int worker_barrier ;
 int writer_fn ;

void regression4_test(void)
{
 pthread_t reader, writer;

 printv(1, "regression test 4 starting\n");

 radix_tree_insert(&mt_tree, 0, &obj0);
 pthread_barrier_init(&worker_barrier, ((void*)0), 2);

 if (pthread_create(&reader, ((void*)0), reader_fn, ((void*)0)) ||
     pthread_create(&writer, ((void*)0), writer_fn, ((void*)0))) {
  perror("pthread_create");
  exit(1);
 }

 if (pthread_join(reader, ((void*)0)) || pthread_join(writer, ((void*)0))) {
  perror("pthread_join");
  exit(1);
 }

 printv(1, "regression test 4 passed\n");
}
