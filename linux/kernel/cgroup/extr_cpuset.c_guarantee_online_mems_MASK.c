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
struct cpuset {int /*<<< orphan*/  effective_mems; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 size_t N_MEMORY ; 
 int /*<<< orphan*/ * node_states ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpuset* FUNC2 (struct cpuset*) ; 

__attribute__((used)) static void FUNC3(struct cpuset *cs, nodemask_t *pmask)
{
	while (!FUNC1(cs->effective_mems, node_states[N_MEMORY]))
		cs = FUNC2(cs);
	FUNC0(*pmask, cs->effective_mems, node_states[N_MEMORY]);
}