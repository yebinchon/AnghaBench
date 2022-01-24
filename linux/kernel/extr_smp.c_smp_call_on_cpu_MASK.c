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
struct smp_call_on_cpu_struct {int (* func ) (void*) ;void* data; unsigned int cpu; int ret; int /*<<< orphan*/  done; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smp_call_on_cpu_callback ; 
 int /*<<< orphan*/  system_wq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(unsigned int cpu, int (*func)(void *), void *par, bool phys)
{
	struct smp_call_on_cpu_struct sscs = {
		.done = FUNC0(sscs.done),
		.func = func,
		.data = par,
		.cpu  = phys ? cpu : -1,
	};

	FUNC1(&sscs.work, smp_call_on_cpu_callback);

	if (cpu >= nr_cpu_ids || !FUNC2(cpu))
		return -ENXIO;

	FUNC3(cpu, system_wq, &sscs.work);
	FUNC4(&sscs.done);

	return sscs.ret;
}