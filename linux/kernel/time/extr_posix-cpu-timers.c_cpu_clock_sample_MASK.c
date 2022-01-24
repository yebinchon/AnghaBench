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
typedef  scalar_t__ u64 ;
struct task_struct {int dummy; } ;
typedef  int clockid_t ;

/* Variables and functions */
#define  CPUCLOCK_PROF 129 
 int const CPUCLOCK_SCHED ; 
#define  CPUCLOCK_VIRT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 

__attribute__((used)) static u64 FUNC3(const clockid_t clkid, struct task_struct *p)
{
	u64 utime, stime;

	if (clkid == CPUCLOCK_SCHED)
		return FUNC2(p);

	FUNC1(p, &utime, &stime);

	switch (clkid) {
	case CPUCLOCK_PROF:
		return utime + stime;
	case CPUCLOCK_VIRT:
		return utime;
	default:
		FUNC0(1);
	}
	return 0;
}