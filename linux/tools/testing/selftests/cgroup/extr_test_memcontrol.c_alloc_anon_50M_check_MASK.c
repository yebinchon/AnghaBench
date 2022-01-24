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
 long FUNC1 (char const*,char*,char*) ; 
 long FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (long,long,int) ; 

__attribute__((used)) static int FUNC6(const char *cgroup, void *arg)
{
	size_t size = FUNC0(50);
	char *buf, *ptr;
	long anon, current;
	int ret = -1;

	buf = FUNC4(size);
	for (ptr = buf; ptr < buf + size; ptr += PAGE_SIZE)
		*ptr = 0;

	current = FUNC2(cgroup, "memory.current");
	if (current < size)
		goto cleanup;

	if (!FUNC5(size, current, 3))
		goto cleanup;

	anon = FUNC1(cgroup, "memory.stat", "anon ");
	if (anon < 0)
		goto cleanup;

	if (!FUNC5(anon, current, 3))
		goto cleanup;

	ret = 0;
cleanup:
	FUNC3(buf);
	return ret;
}