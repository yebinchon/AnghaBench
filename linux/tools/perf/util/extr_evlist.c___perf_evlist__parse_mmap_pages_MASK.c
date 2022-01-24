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
 unsigned long SIZE_MAX ; 
 unsigned long UINT_MAX ; 
 unsigned long page_size ; 
 long FUNC0 (char const*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(unsigned int *mmap_pages, const char *str)
{
	unsigned long max = UINT_MAX;
	long pages;

	if (max > SIZE_MAX / page_size)
		max = SIZE_MAX / page_size;

	pages = FUNC0(str, 1, max);
	if (pages < 0) {
		FUNC1("Invalid argument for --mmap_pages/-m\n");
		return -1;
	}

	*mmap_pages = pages;
	return 0;
}