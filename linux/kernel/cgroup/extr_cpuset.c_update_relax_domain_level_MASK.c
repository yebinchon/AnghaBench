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
struct cpuset {int relax_domain_level; int /*<<< orphan*/  cpus_allowed; } ;
typedef  int s64 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int sched_domain_level_max ; 

__attribute__((used)) static int FUNC3(struct cpuset *cs, s64 val)
{
#ifdef CONFIG_SMP
	if (val < -1 || val >= sched_domain_level_max)
		return -EINVAL;
#endif

	if (val != cs->relax_domain_level) {
		cs->relax_domain_level = val;
		if (!FUNC0(cs->cpus_allowed) &&
		    FUNC1(cs))
			FUNC2();
	}

	return 0;
}