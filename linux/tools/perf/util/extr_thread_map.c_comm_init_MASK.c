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
struct perf_thread_map {TYPE_1__* map; } ;
typedef  int pid_t ;
struct TYPE_2__ {char* comm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,int) ; 
 int FUNC1 (struct perf_thread_map*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct perf_thread_map *map, int i)
{
	pid_t pid = FUNC1(map, i);
	char *comm = NULL;

	/* dummy pid comm initialization */
	if (pid == -1) {
		map->map[i].comm = FUNC3("dummy");
		return;
	}

	/*
	 * The comm name is like extra bonus ;-),
	 * so just warn if we fail for any reason.
	 */
	if (FUNC0(&comm, pid))
		FUNC2("Couldn't resolve comm name for pid %d\n", pid);

	map->map[i].comm = comm;
}