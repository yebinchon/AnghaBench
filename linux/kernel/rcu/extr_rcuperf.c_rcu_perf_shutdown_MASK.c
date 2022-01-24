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
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  n_rcu_perf_writer_finished ; 
 scalar_t__ nrealwriters ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  shutdown_wq ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	do {
		FUNC4(shutdown_wq,
			   FUNC0(&n_rcu_perf_writer_finished) >=
			   nrealwriters);
	} while (FUNC0(&n_rcu_perf_writer_finished) < nrealwriters);
	FUNC3(); /* Wake before output. */
	FUNC2();
	FUNC1();
	return -EINVAL;
}