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
struct fscache_cookie {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_LOOKING_UP ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  fscache_n_retrievals_intr ; 
 int /*<<< orphan*/  fscache_n_retrievals_wait ; 
 int /*<<< orphan*/  fscache_retrieval_delay_histogram ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct fscache_cookie *cookie)
{
	unsigned long jif;

	FUNC1("");

	if (!FUNC6(FSCACHE_COOKIE_LOOKING_UP, &cookie->flags)) {
		FUNC2(" = 0 [imm]");
		return 0;
	}

	FUNC4(&fscache_n_retrievals_wait);

	jif = jiffies;
	if (FUNC7(&cookie->flags, FSCACHE_COOKIE_LOOKING_UP,
			TASK_INTERRUPTIBLE) != 0) {
		FUNC4(&fscache_n_retrievals_intr);
		FUNC2(" = -ERESTARTSYS");
		return -ERESTARTSYS;
	}

	FUNC0(!FUNC6(FSCACHE_COOKIE_LOOKING_UP, &cookie->flags));

	FUNC5();
	FUNC3(fscache_retrieval_delay_histogram, jif);
	FUNC2(" = 0 [dly]");
	return 0;
}