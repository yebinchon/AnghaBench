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
struct perf_thread_map {int nr; int /*<<< orphan*/  refcnt; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter ; 
 int /*<<< orphan*/  FUNC1 (struct dirent**) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_thread_map*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (char*,struct dirent***,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct perf_thread_map* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct dirent**) ; 

struct perf_thread_map *FUNC8(pid_t pid)
{
	struct perf_thread_map *threads;
	char name[256];
	int items;
	struct dirent **namelist = NULL;
	int i;

	FUNC5(name, "/proc/%d/task", pid);
	items = FUNC4(name, &namelist, filter, NULL);
	if (items <= 0)
		return NULL;

	threads = FUNC6(items);
	if (threads != NULL) {
		for (i = 0; i < items; i++)
			FUNC2(threads, i, FUNC0(namelist[i]->d_name));
		threads->nr = items;
		FUNC3(&threads->refcnt, 1);
	}

	for (i=0; i<items; i++)
		FUNC7(&namelist[i]);
	FUNC1(namelist);

	return threads;
}