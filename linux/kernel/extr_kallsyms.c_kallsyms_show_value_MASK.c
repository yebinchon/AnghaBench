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
 int /*<<< orphan*/  CAP_SYSLOG ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int kptr_restrict ; 

int FUNC2(void)
{
	switch (kptr_restrict) {
	case 0:
		if (FUNC1())
			return 1;
	/* fallthrough */
	case 1:
		if (FUNC0(current, CAP_SYSLOG))
			return 1;
	/* fallthrough */
	default:
		return 0;
	}
}