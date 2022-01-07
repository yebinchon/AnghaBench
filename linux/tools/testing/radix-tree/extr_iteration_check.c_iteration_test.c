
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_THREADS ;
 int add_entries_fn ;
 int array ;
 int exit (int) ;
 int item_kill_tree (int *) ;
 unsigned int max_order ;
 int perror (char*) ;
 int printv (int,char*,char*,unsigned int) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 int rand () ;
 int remove_entries_fn ;
 int * seeds ;
 int sleep (unsigned int) ;
 int tag_entries_fn ;
 int tagged_iteration_fn ;
 int test_complete ;
 int * threads ;
 int untagged_iteration_fn ;

void iteration_test(unsigned order, unsigned test_duration)
{
 int i;

 printv(1, "Running %siteration tests for %d seconds\n",
   order > 0 ? "multiorder " : "", test_duration);

 max_order = order;
 test_complete = 0;

 for (i = 0; i < 3; i++)
  seeds[i] = rand();

 if (pthread_create(&threads[0], ((void*)0), tagged_iteration_fn, ((void*)0))) {
  perror("create tagged iteration thread");
  exit(1);
 }
 if (pthread_create(&threads[1], ((void*)0), untagged_iteration_fn, ((void*)0))) {
  perror("create untagged iteration thread");
  exit(1);
 }
 if (pthread_create(&threads[2], ((void*)0), add_entries_fn, ((void*)0))) {
  perror("create add entry thread");
  exit(1);
 }
 if (pthread_create(&threads[3], ((void*)0), remove_entries_fn, ((void*)0))) {
  perror("create remove entry thread");
  exit(1);
 }
 if (pthread_create(&threads[4], ((void*)0), tag_entries_fn, ((void*)0))) {
  perror("create tag entry thread");
  exit(1);
 }

 sleep(test_duration);
 test_complete = 1;

 for (i = 0; i < NUM_THREADS; i++) {
  if (pthread_join(threads[i], ((void*)0))) {
   perror("pthread_join");
   exit(1);
  }
 }

 item_kill_tree(&array);
}
