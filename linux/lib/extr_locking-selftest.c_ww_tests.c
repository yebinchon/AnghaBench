
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAILURE ;
 int LOCKTYPE_WW ;
 int SUCCESS ;
 int dotest (int ,int ,int ) ;
 int pr_cont (char*) ;
 int print_testname (char*) ;
 int printk (char*) ;
 int ww_test_block_block ;
 int ww_test_block_context ;
 int ww_test_block_try ;
 int ww_test_context_block ;
 int ww_test_context_context ;
 int ww_test_context_done_twice ;
 int ww_test_context_fini_early ;
 int ww_test_context_lock_after_done ;
 int ww_test_context_try ;
 int ww_test_context_unlock_twice ;
 int ww_test_diff_class ;
 int ww_test_edeadlk_acquire_more ;
 int ww_test_edeadlk_acquire_more_edeadlk ;
 int ww_test_edeadlk_acquire_more_edeadlk_slow ;
 int ww_test_edeadlk_acquire_more_slow ;
 int ww_test_edeadlk_acquire_wrong ;
 int ww_test_edeadlk_acquire_wrong_slow ;
 int ww_test_edeadlk_no_unlock ;
 int ww_test_edeadlk_no_unlock_slow ;
 int ww_test_edeadlk_normal ;
 int ww_test_edeadlk_normal_slow ;
 int ww_test_fail_acquire ;
 int ww_test_normal ;
 int ww_test_object_lock_stale_context ;
 int ww_test_object_lock_unbalanced ;
 int ww_test_object_unlock_twice ;
 int ww_test_spin_block ;
 int ww_test_spin_context ;
 int ww_test_spin_nest_unlocked ;
 int ww_test_spin_try ;
 int ww_test_try_block ;
 int ww_test_try_context ;
 int ww_test_try_try ;
 int ww_test_two_contexts ;
 int ww_test_unneeded_slow ;

__attribute__((used)) static void ww_tests(void)
{
 printk("  --------------------------------------------------------------------------\n");
 printk("  | Wound/wait tests |\n");
 printk("  ---------------------\n");

 print_testname("ww api failures");
 dotest(ww_test_fail_acquire, SUCCESS, LOCKTYPE_WW);
 dotest(ww_test_normal, SUCCESS, LOCKTYPE_WW);
 dotest(ww_test_unneeded_slow, FAILURE, LOCKTYPE_WW);
 pr_cont("\n");

 print_testname("ww contexts mixing");
 dotest(ww_test_two_contexts, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_diff_class, FAILURE, LOCKTYPE_WW);
 pr_cont("\n");

 print_testname("finishing ww context");
 dotest(ww_test_context_done_twice, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_context_unlock_twice, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_context_fini_early, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_context_lock_after_done, FAILURE, LOCKTYPE_WW);
 pr_cont("\n");

 print_testname("locking mismatches");
 dotest(ww_test_object_unlock_twice, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_object_lock_unbalanced, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_object_lock_stale_context, FAILURE, LOCKTYPE_WW);
 pr_cont("\n");

 print_testname("EDEADLK handling");
 dotest(ww_test_edeadlk_normal, SUCCESS, LOCKTYPE_WW);
 dotest(ww_test_edeadlk_normal_slow, SUCCESS, LOCKTYPE_WW);
 dotest(ww_test_edeadlk_no_unlock, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_edeadlk_no_unlock_slow, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_edeadlk_acquire_more, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_edeadlk_acquire_more_slow, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_edeadlk_acquire_more_edeadlk, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_edeadlk_acquire_more_edeadlk_slow, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_edeadlk_acquire_wrong, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_edeadlk_acquire_wrong_slow, FAILURE, LOCKTYPE_WW);
 pr_cont("\n");

 print_testname("spinlock nest unlocked");
 dotest(ww_test_spin_nest_unlocked, FAILURE, LOCKTYPE_WW);
 pr_cont("\n");

 printk("  -----------------------------------------------------\n");
 printk("                                 |block | try  |context|\n");
 printk("  -----------------------------------------------------\n");

 print_testname("context");
 dotest(ww_test_context_block, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_context_try, SUCCESS, LOCKTYPE_WW);
 dotest(ww_test_context_context, SUCCESS, LOCKTYPE_WW);
 pr_cont("\n");

 print_testname("try");
 dotest(ww_test_try_block, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_try_try, SUCCESS, LOCKTYPE_WW);
 dotest(ww_test_try_context, FAILURE, LOCKTYPE_WW);
 pr_cont("\n");

 print_testname("block");
 dotest(ww_test_block_block, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_block_try, SUCCESS, LOCKTYPE_WW);
 dotest(ww_test_block_context, FAILURE, LOCKTYPE_WW);
 pr_cont("\n");

 print_testname("spinlock");
 dotest(ww_test_spin_block, FAILURE, LOCKTYPE_WW);
 dotest(ww_test_spin_try, SUCCESS, LOCKTYPE_WW);
 dotest(ww_test_spin_context, FAILURE, LOCKTYPE_WW);
 pr_cont("\n");
}
