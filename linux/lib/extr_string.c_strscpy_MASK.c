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
struct word_at_a_time {int dummy; } ;
typedef  long ssize_t ;

/* Variables and functions */
 long E2BIG ; 
 size_t INT_MAX ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 struct word_at_a_time WORD_AT_A_TIME_CONSTANTS ; 
 unsigned long FUNC1 (unsigned long) ; 
 long FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long*,struct word_at_a_time const*) ; 
 unsigned long FUNC4 (unsigned long,unsigned long,struct word_at_a_time const*) ; 
 unsigned long FUNC5 (char const*) ; 
 unsigned long FUNC6 (unsigned long) ; 

ssize_t FUNC7(char *dest, const char *src, size_t count)
{
	const struct word_at_a_time constants = WORD_AT_A_TIME_CONSTANTS;
	size_t max = count;
	long res = 0;

	if (count == 0 || FUNC0(count > INT_MAX))
		return -E2BIG;

#ifdef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
	/*
	 * If src is unaligned, don't cross a page boundary,
	 * since we don't know if the next page is mapped.
	 */
	if ((long)src & (sizeof(long) - 1)) {
		size_t limit = PAGE_SIZE - ((long)src & (PAGE_SIZE - 1));
		if (limit < max)
			max = limit;
	}
#else
	/* If src or dest is unaligned, don't do word-at-a-time. */
	if (((long) dest | (long) src) & (sizeof(long) - 1))
		max = 0;
#endif

	while (max >= sizeof(unsigned long)) {
		unsigned long c, data;

		c = FUNC5(src+res);
		if (FUNC3(c, &data, &constants)) {
			data = FUNC4(c, data, &constants);
			data = FUNC1(data);
			*(unsigned long *)(dest+res) = c & FUNC6(data);
			return res + FUNC2(data);
		}
		*(unsigned long *)(dest+res) = c;
		res += sizeof(unsigned long);
		count -= sizeof(unsigned long);
		max -= sizeof(unsigned long);
	}

	while (count) {
		char c;

		c = src[res];
		dest[res] = c;
		if (!c)
			return res;
		res++;
		count--;
	}

	/* Hit buffer length without finding a NUL; force NUL-termination. */
	if (res)
		dest[res-1] = '\0';

	return -E2BIG;
}