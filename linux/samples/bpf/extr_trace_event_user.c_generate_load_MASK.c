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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static inline int FUNC3(void)
{
	if (FUNC2("dd if=/dev/zero of=/dev/null count=5000k status=none") < 0) {
		FUNC0("failed to generate some load with dd: %s\n", FUNC1(errno));
		return -1;
	}

	return 0;
}