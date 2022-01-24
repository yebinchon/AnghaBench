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
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 

int FUNC2(const char *cgroup, void *arg)
{
	size_t size = (unsigned long)arg;
	char *buf, *ptr;

	buf = FUNC1(size);
	for (ptr = buf; ptr < buf + size; ptr += PAGE_SIZE)
		*ptr = 0;

	FUNC0(buf);
	return 0;
}