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
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int,int,int) ; 
 int FUNC1 () ; 

void FUNC2(void)
{
	unsigned long start;
	int wrapped = 0;

	start = 0;
	do {
		unsigned long old_start;

//		printf("0x%08lx\n", start);
		FUNC0(start, FUNC1() % 113 + 1, FUNC1() % 71,
				FUNC1() % 157, FUNC1() % 91 + 1);
		old_start = start;
		start += FUNC1() % 1000000;
		start %= 1ULL << 33;
		if (start < old_start)
			wrapped = 1;
	} while (!wrapped);
}