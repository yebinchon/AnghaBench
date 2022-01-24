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
#define  AUDIT_FAIL_PANIC 130 
#define  AUDIT_FAIL_PRINTK 129 
#define  AUDIT_FAIL_SILENT 128 
 int audit_failure ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(const char *message)
{
	switch (audit_failure) {
	case AUDIT_FAIL_SILENT:
		break;
	case AUDIT_FAIL_PRINTK:
		if (FUNC2())
			FUNC1("%s\n", message);
		break;
	case AUDIT_FAIL_PANIC:
		FUNC0("audit: %s\n", message);
		break;
	}
}