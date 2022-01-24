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
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 scalar_t__ AUDIT_FAIL_PANIC ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audit_backlog_limit ; 
 scalar_t__ audit_failure ; 
 int /*<<< orphan*/  audit_lost ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  audit_rate_limit ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(const char *message)
{
	static unsigned long	last_msg = 0;
	static DEFINE_SPINLOCK(lock);
	unsigned long		flags;
	unsigned long		now;
	int			print;

	FUNC0(&audit_lost);

	print = (audit_failure == AUDIT_FAIL_PANIC || !audit_rate_limit);

	if (!print) {
		FUNC5(&lock, flags);
		now = jiffies;
		if (now - last_msg > HZ) {
			print = 1;
			last_msg = now;
		}
		FUNC6(&lock, flags);
	}

	if (print) {
		if (FUNC4())
			FUNC3("audit_lost=%u audit_rate_limit=%u audit_backlog_limit=%u\n",
				FUNC1(&audit_lost),
				audit_rate_limit,
				audit_backlog_limit);
		FUNC2(message);
	}
}