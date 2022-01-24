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
 scalar_t__ FULLSTOP_SHUTDOWN ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fullstop ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(const char *title)
{
	while (FUNC0(fullstop) == FULLSTOP_SHUTDOWN) {
		FUNC1("torture thread %s parking due to system shutdown\n",
			  title);
		FUNC2(MAX_SCHEDULE_TIMEOUT);
	}
}