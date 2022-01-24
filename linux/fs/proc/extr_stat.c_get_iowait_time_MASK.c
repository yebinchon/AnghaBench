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
typedef  unsigned long long u64 ;
struct kernel_cpustat {unsigned long long* cpustat; } ;

/* Variables and functions */
 size_t CPUTIME_IOWAIT ; 
 unsigned long long NSEC_PER_USEC ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned long long FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC2(struct kernel_cpustat *kcs, int cpu)
{
	u64 iowait, iowait_usecs = -1ULL;

	if (FUNC0(cpu))
		iowait_usecs = FUNC1(cpu, NULL);

	if (iowait_usecs == -1ULL)
		/* !NO_HZ or cpu offline so we can rely on cpustat.iowait */
		iowait = kcs->cpustat[CPUTIME_IOWAIT];
	else
		iowait = iowait_usecs * NSEC_PER_USEC;

	return iowait;
}