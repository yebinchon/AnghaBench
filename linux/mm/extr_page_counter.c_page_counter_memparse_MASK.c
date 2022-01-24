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
typedef  int u64 ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PAGE_COUNTER_MAX ; 
 int PAGE_SIZE ; 
 int FUNC0 (char const*,char**) ; 
 unsigned long FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 

int FUNC3(const char *buf, const char *max,
			  unsigned long *nr_pages)
{
	char *end;
	u64 bytes;

	if (!FUNC2(buf, max)) {
		*nr_pages = PAGE_COUNTER_MAX;
		return 0;
	}

	bytes = FUNC0(buf, &end);
	if (*end != '\0')
		return -EINVAL;

	*nr_pages = FUNC1(bytes / PAGE_SIZE, (u64)PAGE_COUNTER_MAX);

	return 0;
}