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

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 long FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (long,size_t,int) ; 

__attribute__((used)) static int FUNC5(const char *cgroup, void *arg)
{
	long mem_max = (long)arg;
	size_t size = FUNC0(50);
	char *buf, *ptr;
	long mem_current, swap_current;
	int ret = -1;

	buf = FUNC3(size);
	for (ptr = buf; ptr < buf + size; ptr += PAGE_SIZE)
		*ptr = 0;

	mem_current = FUNC1(cgroup, "memory.current");
	if (!mem_current || !FUNC4(mem_current, mem_max, 3))
		goto cleanup;

	swap_current = FUNC1(cgroup, "memory.swap.current");
	if (!swap_current ||
	    !FUNC4(mem_current + swap_current, size, 3))
		goto cleanup;

	ret = 0;
cleanup:
	FUNC2(buf);
	return ret;
}