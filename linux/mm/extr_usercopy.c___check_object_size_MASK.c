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
#define  GOOD_FRAME 130 
#define  GOOD_STACK 129 
#define  NOT_STACK 128 
 int /*<<< orphan*/  bypass_usercopy_checks ; 
 int /*<<< orphan*/  FUNC0 (unsigned long const,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long const,unsigned long,int) ; 
 int FUNC3 (void const*,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC6(const void *ptr, unsigned long n, bool to_user)
{
	if (FUNC4(&bypass_usercopy_checks))
		return;

	/* Skip all tests if size is zero. */
	if (!n)
		return;

	/* Check for invalid addresses. */
	FUNC0((const unsigned long)ptr, n, to_user);

	/* Check for bad stack object. */
	switch (FUNC3(ptr, n)) {
	case NOT_STACK:
		/* Object is not touching the current process stack. */
		break;
	case GOOD_FRAME:
	case GOOD_STACK:
		/*
		 * Object is either in the correct frame (when it
		 * is possible to check) or just generally on the
		 * process stack (when frame checking not available).
		 */
		return;
	default:
		FUNC5("process stack", NULL, to_user, 0, n);
	}

	/* Check for bad heap object. */
	FUNC1(ptr, n, to_user);

	/* Check for object in kernel to avoid text exposure. */
	FUNC2((const unsigned long)ptr, n, to_user);
}