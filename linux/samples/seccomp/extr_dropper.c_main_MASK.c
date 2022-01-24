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
 int AUDIT_ARCH_I386 ; 
 int AUDIT_ARCH_X86_64 ; 
 int /*<<< orphan*/  FUNC0 (char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(int argc, char **argv)
{
	if (argc < 5) {
		FUNC1(stderr, "Usage:\n"
			"dropper <syscall_nr> <arch> <errno> <prog> [<args>]\n"
			"Hint:	AUDIT_ARCH_I386: 0x%X\n"
			"	AUDIT_ARCH_X86_64: 0x%X\n"
			"\n", AUDIT_ARCH_I386, AUDIT_ARCH_X86_64);
		return 1;
	}
	if (FUNC2(FUNC4(argv[1], NULL, 0), FUNC4(argv[2], NULL, 0),
			   FUNC4(argv[3], NULL, 0)))
		return 1;
	FUNC0(argv[4], &argv[4]);
	FUNC3("Failed to execv\n");
	return 255;
}