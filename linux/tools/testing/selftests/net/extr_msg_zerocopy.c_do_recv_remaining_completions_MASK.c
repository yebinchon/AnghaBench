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
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int PF_RDS ; 
 int /*<<< orphan*/  POLLERR ; 
 int /*<<< orphan*/  POLLIN ; 
 scalar_t__ cfg_waittime_ms ; 
 scalar_t__ completions ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ expected_completions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(int fd, int domain)
{
	int64_t tstop = FUNC3() + cfg_waittime_ms;

	while (completions < expected_completions &&
	       FUNC3() < tstop) {
		if (FUNC0(fd, domain == PF_RDS ? POLLIN : POLLERR))
			FUNC1(fd, domain);
	}

	if (completions < expected_completions)
		FUNC2(stderr, "missing notifications: %lu < %lu\n",
			completions, expected_completions);
}