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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PAGE_SIZE ; 
 long FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,char*,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char*,char const*) ; 

long FUNC4(const char *cgroup, const char *control, const char *key)
{
	char buf[PAGE_SIZE];
	char *ptr;

	if (FUNC1(cgroup, control, buf, sizeof(buf)))
		return -1;

	ptr = FUNC3(buf, key);
	if (!ptr)
		return -1;

	return FUNC0(ptr + FUNC2(key));
}