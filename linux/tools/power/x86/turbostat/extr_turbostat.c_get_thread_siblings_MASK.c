#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpu_topology {int logical_cpu_id; int physical_core_id; int /*<<< orphan*/  put_ids; int /*<<< orphan*/  thread_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  thread_id; } ;
struct TYPE_3__ {int max_cpu_num; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BITMASK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_2__* cpus ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,unsigned long*,char*) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 TYPE_1__ topo ; 

int FUNC12(struct cpu_topology *thiscpu)
{
	char path[80], character;
	FILE *filep;
	unsigned long map;
	int so, shift, sib_core;
	int cpu = thiscpu->logical_cpu_id;
	int offset = topo.max_cpu_num + 1;
	size_t size;
	int thread_id = 0;

	thiscpu->put_ids = FUNC0((topo.max_cpu_num + 1));
	if (thiscpu->thread_id < 0)
		thiscpu->thread_id = thread_id++;
	if (!thiscpu->put_ids)
		return -1;

	size = FUNC1((topo.max_cpu_num + 1));
	FUNC4(size, thiscpu->put_ids);

	FUNC10(path,
		"/sys/devices/system/cpu/cpu%d/topology/thread_siblings", cpu);
	filep = FUNC7(path, "r");
	do {
		offset -= BITMASK_SIZE;
		if (FUNC8(filep, "%lx%c", &map, &character) != 2)
			FUNC5(1, "%s: failed to parse file", path);
		for (shift = 0; shift < BITMASK_SIZE; shift++) {
			if ((map >> shift) & 0x1) {
				so = shift + offset;
				sib_core = FUNC9(so);
				if (sib_core == thiscpu->physical_core_id) {
					FUNC3(so, size, thiscpu->put_ids);
					if ((so != cpu) &&
					    (cpus[so].thread_id < 0))
						cpus[so].thread_id =
								    thread_id++;
				}
			}
		}
	} while (!FUNC11(&character, ",", 1));
	FUNC6(filep);

	return FUNC2(size, thiscpu->put_ids);
}