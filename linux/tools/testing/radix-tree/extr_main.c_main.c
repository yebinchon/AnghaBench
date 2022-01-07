
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int benchmark () ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int iteration_test (int,int) ;
 int nr_allocated ;
 int optarg ;
 int preempt_count ;
 int printf (char*,...) ;
 int printv (int,char*,int ,int ) ;
 int radix_tree_cpu_dead (int ) ;
 int radix_tree_init () ;
 int rcu_barrier () ;
 int rcu_register_thread () ;
 int rcu_unregister_thread () ;
 int regression1_test () ;
 int regression2_test () ;
 int regression3_test () ;
 int regression4_test () ;
 int single_thread_tests (int) ;
 int srand (unsigned int) ;
 unsigned int strtoul (int ,int *,int ) ;
 int test_verbose ;
 unsigned int time (int *) ;
 int xarray_tests () ;

int main(int argc, char **argv)
{
 bool long_run = 0;
 int opt;
 unsigned int seed = time(((void*)0));

 while ((opt = getopt(argc, argv, "ls:v")) != -1) {
  if (opt == 'l')
   long_run = 1;
  else if (opt == 's')
   seed = strtoul(optarg, ((void*)0), 0);
  else if (opt == 'v')
   test_verbose++;
 }

 printf("random seed %u\n", seed);
 srand(seed);

 printf("running tests\n");

 rcu_register_thread();
 radix_tree_init();

 xarray_tests();
 regression1_test();
 regression2_test();
 regression3_test();
 regression4_test();
 iteration_test(0, 10 + 90 * long_run);
 iteration_test(7, 10 + 90 * long_run);
 single_thread_tests(long_run);


 radix_tree_cpu_dead(0);

 benchmark();

 rcu_barrier();
 printv(2, "after rcu_barrier: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
 rcu_unregister_thread();

 printf("tests completed\n");

 exit(0);
}
