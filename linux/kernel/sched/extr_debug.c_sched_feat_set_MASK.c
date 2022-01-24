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
 int /*<<< orphan*/  __SCHED_FEAT_NR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  sched_feat_names ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 unsigned long sysctl_sched_features ; 

__attribute__((used)) static int FUNC4(char *cmp)
{
	int i;
	int neg = 0;

	if (FUNC3(cmp, "NO_", 3) == 0) {
		neg = 1;
		cmp += 3;
	}

	i = FUNC0(sched_feat_names, __SCHED_FEAT_NR, cmp);
	if (i < 0)
		return i;

	if (neg) {
		sysctl_sched_features &= ~(1UL << i);
		FUNC1(i);
	} else {
		sysctl_sched_features |= (1UL << i);
		FUNC2(i);
	}

	return 0;
}