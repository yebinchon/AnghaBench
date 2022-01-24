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
struct tmpmasks {int /*<<< orphan*/  delmask; int /*<<< orphan*/  addmask; int /*<<< orphan*/  new_cpus; } ;
struct cpuset {int /*<<< orphan*/  subparts_cpus; int /*<<< orphan*/  effective_cpus; int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct cpuset *cs, struct tmpmasks *tmp)
{
	if (cs) {
		FUNC0(cs->cpus_allowed);
		FUNC0(cs->effective_cpus);
		FUNC0(cs->subparts_cpus);
	}
	if (tmp) {
		FUNC0(tmp->new_cpus);
		FUNC0(tmp->addmask);
		FUNC0(tmp->delmask);
	}
}