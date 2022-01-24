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
struct thread {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int idle_max_cpu ; 
 int /*<<< orphan*/ ** idle_threads ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int ncpu)
{
	int i, ret;

	idle_threads = FUNC2(ncpu * sizeof(struct thread *));
	if (!idle_threads)
		return -ENOMEM;

	idle_max_cpu = ncpu;

	/* allocate the actual thread struct if needed */
	for (i = 0; i < ncpu; ++i) {
		idle_threads[i] = FUNC1(0, 0);
		if (idle_threads[i] == NULL)
			return -ENOMEM;

		ret = FUNC0(idle_threads[i]);
		if (ret < 0)
			return ret;
	}

	return 0;
}