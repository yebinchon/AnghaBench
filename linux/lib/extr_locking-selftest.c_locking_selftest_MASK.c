#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  AA ; 
 int /*<<< orphan*/  ABBA ; 
 int /*<<< orphan*/  ABBCCA ; 
 int /*<<< orphan*/  ABBCCDDA ; 
 int /*<<< orphan*/  ABCABC ; 
 int /*<<< orphan*/  ABCDBCDA ; 
 int /*<<< orphan*/  ABCDBDDA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  LOCKTYPE_RWLOCK ; 
 int /*<<< orphan*/  LOCKTYPE_RWSEM ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/ * current ; 
 int debug_locks ; 
 int debug_locks_silent ; 
 int /*<<< orphan*/  debug_locks_verbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  double_unlock ; 
 scalar_t__ expected_testcase_failures ; 
 int /*<<< orphan*/  init_held ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  irq_inversion ; 
 int /*<<< orphan*/  irq_read_recursion ; 
 int /*<<< orphan*/  irqsafe1 ; 
 int /*<<< orphan*/  irqsafe2A ; 
 int /*<<< orphan*/  irqsafe2B ; 
 int /*<<< orphan*/  irqsafe3 ; 
 int /*<<< orphan*/  irqsafe4 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  rlock_AA1 ; 
 int /*<<< orphan*/  rlock_AA1B ; 
 int /*<<< orphan*/  rlock_AA2 ; 
 int /*<<< orphan*/  rlock_AA3 ; 
 int /*<<< orphan*/  rlock_ABBA1 ; 
 int /*<<< orphan*/  rlock_ABBA2 ; 
 int /*<<< orphan*/  rlock_ABBA3 ; 
 int /*<<< orphan*/  rsem_AA1 ; 
 int /*<<< orphan*/  rsem_AA1B ; 
 int /*<<< orphan*/  rsem_AA2 ; 
 int /*<<< orphan*/  rsem_AA3 ; 
 int /*<<< orphan*/  rwsem_ABBA1 ; 
 int /*<<< orphan*/  rwsem_ABBA2 ; 
 int /*<<< orphan*/  rwsem_ABBA3 ; 
 scalar_t__ testcase_successes ; 
 int /*<<< orphan*/  testcase_total ; 
 scalar_t__ unexpected_testcase_failures ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14(void)
{
	/*
	 * Got a locking failure before the selftest ran?
	 */
	if (!debug_locks) {
		FUNC12("----------------------------------\n");
		FUNC12("| Locking API testsuite disabled |\n");
		FUNC12("----------------------------------\n");
		return;
	}

	/*
	 * Run the testsuite:
	 */
	FUNC12("------------------------\n");
	FUNC12("| Locking API testsuite:\n");
	FUNC12("----------------------------------------------------------------------------\n");
	FUNC12("                                 | spin |wlock |rlock |mutex | wsem | rsem |\n");
	FUNC12("  --------------------------------------------------------------------------\n");

	FUNC8();
	debug_locks_silent = !debug_locks_verbose;
	FUNC9(current);

	FUNC3("A-A deadlock", AA);
	FUNC3("A-B-B-A deadlock", ABBA);
	FUNC3("A-B-B-C-C-A deadlock", ABBCCA);
	FUNC3("A-B-C-A-B-C deadlock", ABCABC);
	FUNC3("A-B-B-C-C-D-D-A deadlock", ABBCCDDA);
	FUNC3("A-B-C-D-B-D-D-A deadlock", ABCDBDDA);
	FUNC3("A-B-C-D-B-C-D-A deadlock", ABCDBCDA);
	FUNC2("double unlock", double_unlock);
	FUNC2("initialize held", init_held);

	FUNC12("  --------------------------------------------------------------------------\n");
	FUNC11("recursive read-lock");
	FUNC10("             |");
	FUNC7(rlock_AA1, SUCCESS, LOCKTYPE_RWLOCK);
	FUNC10("             |");
	FUNC7(rsem_AA1, FAILURE, LOCKTYPE_RWSEM);
	FUNC10("\n");

	FUNC11("recursive read-lock #2");
	FUNC10("             |");
	FUNC7(rlock_AA1B, SUCCESS, LOCKTYPE_RWLOCK);
	FUNC10("             |");
	FUNC7(rsem_AA1B, FAILURE, LOCKTYPE_RWSEM);
	FUNC10("\n");

	FUNC11("mixed read-write-lock");
	FUNC10("             |");
	FUNC7(rlock_AA2, FAILURE, LOCKTYPE_RWLOCK);
	FUNC10("             |");
	FUNC7(rsem_AA2, FAILURE, LOCKTYPE_RWSEM);
	FUNC10("\n");

	FUNC11("mixed write-read-lock");
	FUNC10("             |");
	FUNC7(rlock_AA3, FAILURE, LOCKTYPE_RWLOCK);
	FUNC10("             |");
	FUNC7(rsem_AA3, FAILURE, LOCKTYPE_RWSEM);
	FUNC10("\n");

	FUNC11("mixed read-lock/lock-write ABBA");
	FUNC10("             |");
	FUNC7(rlock_ABBA1, FAILURE, LOCKTYPE_RWLOCK);
#ifdef CONFIG_PROVE_LOCKING
	/*
	 * Lockdep does indeed fail here, but there's nothing we can do about
	 * that now.  Don't kill lockdep for it.
	 */
	unexpected_testcase_failures--;
#endif

	FUNC10("             |");
	FUNC7(rwsem_ABBA1, FAILURE, LOCKTYPE_RWSEM);

	FUNC11("mixed read-lock/lock-read ABBA");
	FUNC10("             |");
	FUNC7(rlock_ABBA2, SUCCESS, LOCKTYPE_RWLOCK);
	FUNC10("             |");
	FUNC7(rwsem_ABBA2, FAILURE, LOCKTYPE_RWSEM);

	FUNC11("mixed write-lock/lock-write ABBA");
	FUNC10("             |");
	FUNC7(rlock_ABBA3, FAILURE, LOCKTYPE_RWLOCK);
	FUNC10("             |");
	FUNC7(rwsem_ABBA3, FAILURE, LOCKTYPE_RWSEM);

	FUNC12("  --------------------------------------------------------------------------\n");

	/*
	 * irq-context testcases:
	 */
	FUNC1("irqs-on + irq-safe-A", irqsafe1);
	FUNC0("sirq-safe-A => hirqs-on", irqsafe2A);
	FUNC1("safe-A + irqs-on", irqsafe2B);
	FUNC5("safe-A + unsafe-B #1", irqsafe3);
	FUNC5("safe-A + unsafe-B #2", irqsafe4);
	FUNC6("irq lock-inversion", irq_inversion);

	FUNC4("irq read-recursion", irq_read_recursion);
//	DO_TESTCASE_6x2B("irq read-recursion #2", irq_read_recursion2);

	FUNC13();

	if (unexpected_testcase_failures) {
		FUNC12("-----------------------------------------------------------------\n");
		debug_locks = 0;
		FUNC12("BUG: %3d unexpected failures (out of %3d) - debugging disabled! |\n",
			unexpected_testcase_failures, testcase_total);
		FUNC12("-----------------------------------------------------------------\n");
	} else if (expected_testcase_failures && testcase_successes) {
		FUNC12("--------------------------------------------------------\n");
		FUNC12("%3d out of %3d testcases failed, as expected. |\n",
			expected_testcase_failures, testcase_total);
		FUNC12("----------------------------------------------------\n");
		debug_locks = 1;
	} else if (expected_testcase_failures && !testcase_successes) {
		FUNC12("--------------------------------------------------------\n");
		FUNC12("All %3d testcases failed, as expected. |\n",
			expected_testcase_failures);
		FUNC12("----------------------------------------\n");
		debug_locks = 1;
	} else {
		FUNC12("-------------------------------------------------------\n");
		FUNC12("Good, all %3d testcases passed! |\n",
			testcase_successes);
		FUNC12("---------------------------------\n");
		debug_locks = 1;
	}
	FUNC9(NULL);
	debug_locks_silent = 0;
}