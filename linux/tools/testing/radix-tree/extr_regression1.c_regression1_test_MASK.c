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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regression1_fn ; 
 int /*<<< orphan*/ * threads ; 
 int /*<<< orphan*/  worker_barrier ; 

void FUNC8(void)
{
	int nr_threads;
	int i;
	long arg;

	/* Regression #1 */
	FUNC4(1, "running regression test 1, should finish in under a minute\n");
	nr_threads = 2;
	FUNC5(&worker_barrier, NULL, nr_threads);

	threads = FUNC2(nr_threads * sizeof(pthread_t *));

	for (i = 0; i < nr_threads; i++) {
		arg = i;
		if (FUNC6(&threads[i], NULL, regression1_fn, (void *)arg)) {
			FUNC3("pthread_create");
			FUNC0(1);
		}
	}

	for (i = 0; i < nr_threads; i++) {
		if (FUNC7(threads[i], NULL)) {
			FUNC3("pthread_join");
			FUNC0(1);
		}
	}

	FUNC1(threads);

	FUNC4(1, "regression test 1, done\n");
}