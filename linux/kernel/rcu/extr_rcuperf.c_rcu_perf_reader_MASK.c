#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* readlock ) () ;int /*<<< orphan*/  (* readunlock ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_NICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 TYPE_1__* cur_ops ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  n_rcu_perf_reader_started ; 
 long nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int
FUNC12(void *arg)
{
	unsigned long flags;
	int idx;
	long me = (long)arg;

	FUNC0("rcu_perf_reader task started");
	FUNC6(current, FUNC2(me % nr_cpu_ids));
	FUNC7(current, MAX_NICE);
	FUNC1(&n_rcu_perf_reader_started);

	do {
		FUNC4(flags);
		idx = cur_ops->readlock();
		cur_ops->readunlock(idx);
		FUNC3(flags);
		FUNC5();
	} while (!FUNC11());
	FUNC10("rcu_perf_reader");
	return 0;
}