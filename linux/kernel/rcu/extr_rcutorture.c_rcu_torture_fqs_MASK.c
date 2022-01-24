#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* fqs ) () ;} ;

/* Variables and functions */
 unsigned long HZ ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* cur_ops ; 
 int fqs_duration ; 
 scalar_t__ fqs_holdoff ; 
 unsigned long fqs_stutter ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int
FUNC9(void *arg)
{
	unsigned long fqs_resume_time;
	int fqs_burst_remaining;

	FUNC1("rcu_torture_fqs task started");
	do {
		fqs_resume_time = jiffies + fqs_stutter * HZ;
		while (FUNC0(jiffies, fqs_resume_time) &&
		       !FUNC2()) {
			FUNC3(1);
		}
		fqs_burst_remaining = fqs_duration;
		while (fqs_burst_remaining > 0 &&
		       !FUNC2()) {
			cur_ops->fqs();
			FUNC8(fqs_holdoff);
			fqs_burst_remaining -= fqs_holdoff;
		}
		FUNC5("rcu_torture_fqs");
	} while (!FUNC7());
	FUNC6("rcu_torture_fqs");
	return 0;
}