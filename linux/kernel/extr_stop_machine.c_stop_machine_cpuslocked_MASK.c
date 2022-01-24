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
struct multi_stop_data {int (* fn ) (void*) ;void* data; int num_threads; struct cpumask const* active_cpus; } ;
struct cpumask {int dummy; } ;
typedef  int (* cpu_stop_fn_t ) (void*) ;

/* Variables and functions */
 int /*<<< orphan*/  MULTI_STOP_PREPARE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  multi_cpu_stop ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct multi_stop_data*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct multi_stop_data*) ; 
 int /*<<< orphan*/  stop_machine_initialized ; 
 int FUNC8 (void*) ; 

int FUNC9(cpu_stop_fn_t fn, void *data,
			    const struct cpumask *cpus)
{
	struct multi_stop_data msdata = {
		.fn = fn,
		.data = data,
		.num_threads = FUNC5(),
		.active_cpus = cpus,
	};

	FUNC4();

	if (!stop_machine_initialized) {
		/*
		 * Handle the case where stop_machine() is called
		 * early in boot before stop_machine() has been
		 * initialized.
		 */
		unsigned long flags;
		int ret;

		FUNC0(msdata.num_threads != 1);

		FUNC3(flags);
		FUNC1();
		ret = (*fn)(data);
		FUNC2(flags);

		return ret;
	}

	/* Set the initial state and stop all online cpus. */
	FUNC6(&msdata, MULTI_STOP_PREPARE);
	return FUNC7(cpu_online_mask, multi_cpu_stop, &msdata);
}