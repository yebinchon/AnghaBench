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
typedef  void perf_callchain_entry ;
struct callchain_cpus_entries {scalar_t__* cpu_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  callchain_cpus_entries ; 
 int /*<<< orphan*/  callchain_recursion ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 struct callchain_cpus_entries* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct perf_callchain_entry *FUNC5(int *rctx)
{
	int cpu;
	struct callchain_cpus_entries *entries;

	*rctx = FUNC0(FUNC4(callchain_recursion));
	if (*rctx == -1)
		return NULL;

	entries = FUNC2(callchain_cpus_entries);
	if (!entries)
		return NULL;

	cpu = FUNC3();

	return (((void *)entries->cpu_entries[cpu]) +
		(*rctx * FUNC1()));
}