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
struct multi_stop_data {void* data; scalar_t__ num_threads; struct cpumask const* active_cpus; int /*<<< orphan*/  fn; } ;
struct cpumask {int dummy; } ;
struct cpu_stop_done {int ret; int /*<<< orphan*/  completion; } ;
typedef  int /*<<< orphan*/  cpu_stop_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MULTI_STOP_PREPARE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_active_mask ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cpu_stop_done*,scalar_t__) ; 
 int FUNC5 (struct multi_stop_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int (*) (struct multi_stop_data*),struct multi_stop_data*,struct cpu_stop_done*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct multi_stop_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_cpus_mutex ; 

int FUNC12(cpu_stop_fn_t fn, void *data,
				  const struct cpumask *cpus)
{
	struct multi_stop_data msdata = { .fn = fn, .data = data,
					    .active_cpus = cpus };
	struct cpu_stop_done done;
	int ret;

	/* Local CPU must be inactive and CPU hotplug in progress. */
	FUNC0(FUNC2(FUNC10()));
	msdata.num_threads = FUNC8() + 1;	/* +1 for local */

	/* No proper task established and can't sleep - busy wait for lock. */
	while (!FUNC6(&stop_cpus_mutex))
		FUNC3();

	/* Schedule work on other CPUs and execute directly for local CPU */
	FUNC11(&msdata, MULTI_STOP_PREPARE);
	FUNC4(&done, FUNC8());
	FUNC9(cpu_active_mask, multi_cpu_stop, &msdata,
			     &done);
	ret = FUNC5(&msdata);

	/* Busy wait for completion. */
	while (!FUNC1(&done.completion))
		FUNC3();

	FUNC7(&stop_cpus_mutex);
	return ret ?: done.ret;
}