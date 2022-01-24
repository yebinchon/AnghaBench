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
typedef  int /*<<< orphan*/  zero ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ __end_rodata ; 
 scalar_t__ __start_rodata ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int rodata_test_data ; 

void FUNC3(void)
{
	unsigned long start, end;
	int zero = 0;

	/* test 1: read the value */
	/* If this test fails, some previous testrun has clobbered the state */
	if (!rodata_test_data) {
		FUNC0("test 1 fails (start data)\n");
		return;
	}

	/* test 2: write to the variable; this should fault */
	if (!FUNC2((void *)&rodata_test_data,
				(void *)&zero, sizeof(zero))) {
		FUNC0("test data was not read only\n");
		return;
	}

	/* test 3: check the value hasn't changed */
	if (rodata_test_data == zero) {
		FUNC0("test data was changed\n");
		return;
	}

	/* test 4: check if the rodata section is PAGE_SIZE aligned */
	start = (unsigned long)__start_rodata;
	end = (unsigned long)__end_rodata;
	if (start & (PAGE_SIZE - 1)) {
		FUNC0("start of .rodata is not page size aligned\n");
		return;
	}
	if (end & (PAGE_SIZE - 1)) {
		FUNC0("end of .rodata is not page size aligned\n");
		return;
	}

	FUNC1("all tests were successful\n");
}