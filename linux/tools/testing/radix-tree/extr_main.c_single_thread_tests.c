
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_and_check () ;
 int big_gang_check (int) ;
 int copy_tag_check () ;
 int dynamic_height_check () ;
 int fflush (int ) ;
 int gang_check () ;
 int ida_tests () ;
 int idr_checks () ;
 int multiorder_checks () ;
 int nr_allocated ;
 int preempt_count ;
 int printv (int,char*,int,...) ;
 int rcu_barrier () ;
 int stdout ;
 int tag_check () ;

__attribute__((used)) static void single_thread_tests(bool long_run)
{
 int i;

 printv(1, "starting single_thread_tests: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
 multiorder_checks();
 rcu_barrier();
 printv(2, "after multiorder_check: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
 tag_check();
 rcu_barrier();
 printv(2, "after tag_check: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
 gang_check();
 rcu_barrier();
 printv(2, "after gang_check: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
 add_and_check();
 rcu_barrier();
 printv(2, "after add_and_check: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
 dynamic_height_check();
 rcu_barrier();
 printv(2, "after dynamic_height_check: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
 idr_checks();
 ida_tests();
 rcu_barrier();
 printv(2, "after idr_checks: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
 big_gang_check(long_run);
 rcu_barrier();
 printv(2, "after big_gang_check: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
 for (i = 0; i < (long_run ? 2000 : 3); i++) {
  copy_tag_check();
  printv(2, "%d ", i);
  fflush(stdout);
 }
 rcu_barrier();
 printv(2, "after copy_tag_check: %d allocated, preempt %d\n",
  nr_allocated, preempt_count);
}
