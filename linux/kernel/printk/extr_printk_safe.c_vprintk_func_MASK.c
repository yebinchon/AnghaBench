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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  LOGLEVEL_DEFAULT ; 
 int PRINTK_NMI_CONTEXT_MASK ; 
 int PRINTK_NMI_DIRECT_CONTEXT_MASK ; 
 int PRINTK_SAFE_CONTEXT_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  logbuf_lock ; 
 int /*<<< orphan*/  printk_context ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int FUNC8(const char *fmt, va_list args)
{
	/*
	 * Try to use the main logbuf even in NMI. But avoid calling console
	 * drivers that might have their own locks.
	 */
	if ((FUNC3(printk_context) & PRINTK_NMI_DIRECT_CONTEXT_MASK) &&
	    FUNC1(&logbuf_lock)) {
		int len;

		len = FUNC7(0, LOGLEVEL_DEFAULT, NULL, 0, fmt, args);
		FUNC2(&logbuf_lock);
		FUNC0();
		return len;
	}

	/* Use extra buffer in NMI when logbuf_lock is taken or in safe mode. */
	if (FUNC3(printk_context) & PRINTK_NMI_CONTEXT_MASK)
		return FUNC5(fmt, args);

	/* Use extra buffer to prevent a recursion deadlock in safe mode. */
	if (FUNC3(printk_context) & PRINTK_SAFE_CONTEXT_MASK)
		return FUNC6(fmt, args);

	/* No obstacles. */
	return FUNC4(fmt, args);
}