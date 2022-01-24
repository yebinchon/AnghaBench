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
struct pyrf_cpu_map {int /*<<< orphan*/ * cpus; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,char**) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct pyrf_cpu_map *pcpus,
			      PyObject *args, PyObject *kwargs)
{
	static char *kwlist[] = { "cpustr", NULL };
	char *cpustr = NULL;

	if (!FUNC0(args, kwargs, "|s",
					 kwlist, &cpustr))
		return -1;

	pcpus->cpus = FUNC1(cpustr);
	if (pcpus->cpus == NULL)
		return -1;
	return 0;
}