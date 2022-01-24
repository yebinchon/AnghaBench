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
struct TYPE_2__ {int nrealwriters_stress; int nrealreaders_stress; int /*<<< orphan*/ * lrsa; int /*<<< orphan*/ * lwsa; int /*<<< orphan*/  cur_ops; int /*<<< orphan*/  n_lock_torture_errors; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ cxt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lock_torture_reader ; 
 int /*<<< orphan*/  lock_torture_stats ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  lock_torture_writer ; 
 int /*<<< orphan*/ * reader_tasks ; 
 int /*<<< orphan*/  stats_task ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * writer_tasks ; 

__attribute__((used)) static void FUNC8(void)
{
	int i;

	if (FUNC4())
		return;

	/*
	 * Indicates early cleanup, meaning that the test has not run,
	 * such as when passing bogus args when loading the module. As
	 * such, only perform the underlying torture-specific cleanups,
	 * and avoid anything related to locktorture.
	 */
	if (!cxt.lwsa && !cxt.lrsa)
		goto end;

	if (writer_tasks) {
		for (i = 0; i < cxt.nrealwriters_stress; i++)
			FUNC7(lock_torture_writer,
					     writer_tasks[i]);
		FUNC1(writer_tasks);
		writer_tasks = NULL;
	}

	if (reader_tasks) {
		for (i = 0; i < cxt.nrealreaders_stress; i++)
			FUNC7(lock_torture_reader,
					     reader_tasks[i]);
		FUNC1(reader_tasks);
		reader_tasks = NULL;
	}

	FUNC7(lock_torture_stats, stats_task);
	FUNC3();  /* -After- the stats thread is stopped! */

	if (FUNC0(&cxt.n_lock_torture_errors))
		FUNC2(cxt.cur_ops,
						"End of test: FAILURE");
	else if (FUNC6())
		FUNC2(cxt.cur_ops,
						"End of test: LOCK_HOTPLUG");
	else
		FUNC2(cxt.cur_ops,
						"End of test: SUCCESS");

	FUNC1(cxt.lwsa);
	cxt.lwsa = NULL;
	FUNC1(cxt.lrsa);
	cxt.lrsa = NULL;

end:
	FUNC5();
}