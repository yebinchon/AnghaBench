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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_TRACEME ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int* var ; 

__attribute__((used)) static void FUNC5(int size, int wr)
{
	volatile uint8_t *addr = &var[32 + wr];

	if (FUNC2(PTRACE_TRACEME, 0, NULL, NULL) != 0) {
		FUNC1(
			"ptrace(PTRACE_TRACEME) failed: %s\n",
			FUNC4(errno));
		FUNC0(1);
	}

	if (FUNC3(SIGSTOP) != 0) {
		FUNC1(
			"raise(SIGSTOP) failed: %s\n", FUNC4(errno));
		FUNC0(1);
	}

	if ((uintptr_t) addr % size) {
		FUNC1(
			 "Wrong address write for the given size: %s\n",
			 FUNC4(errno));
		FUNC0(1);
	}

	switch (size) {
	case 1:
		*addr = 47;
		break;
	case 2:
		*(uint16_t *)addr = 47;
		break;
	case 4:
		*(uint32_t *)addr = 47;
		break;
	case 8:
		*(uint64_t *)addr = 47;
		break;
	case 16:
		__asm__ volatile ("stp x29, x30, %0" : "=m" (addr[0]));
		break;
	case 32:
		__asm__ volatile ("stp q29, q30, %0" : "=m" (addr[0]));
		break;
	}

	FUNC0(0);
}