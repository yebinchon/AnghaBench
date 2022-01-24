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
struct perf_cpu_map {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 struct perf_cpu_map* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct perf_cpu_map *FUNC3(const char *path)
{
	FILE *file;
	struct perf_cpu_map *cpus;

	file = FUNC1(path, "r");
	if (!file)
		return NULL;

	cpus = FUNC2(file);
	FUNC0(file);
	return cpus;
}