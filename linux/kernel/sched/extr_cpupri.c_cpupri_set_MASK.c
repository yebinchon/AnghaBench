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
struct cpupri_vec {int /*<<< orphan*/  mask; int /*<<< orphan*/  count; } ;
struct cpupri {int* cpu_to_pri; struct cpupri_vec* pri_to_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CPUPRI_INVALID ; 
 int CPUPRI_NR_PRIORITIES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct cpupri *cp, int cpu, int newpri)
{
	int *currpri = &cp->cpu_to_pri[cpu];
	int oldpri = *currpri;
	int do_mb = 0;

	newpri = FUNC3(newpri);

	FUNC0(newpri >= CPUPRI_NR_PRIORITIES);

	if (newpri == oldpri)
		return;

	/*
	 * If the CPU was currently mapped to a different value, we
	 * need to map it to the new value then remove the old value.
	 * Note, we must add the new value first, otherwise we risk the
	 * cpu being missed by the priority loop in cpupri_find.
	 */
	if (FUNC6(newpri != CPUPRI_INVALID)) {
		struct cpupri_vec *vec = &cp->pri_to_cpu[newpri];

		FUNC5(cpu, vec->mask);
		/*
		 * When adding a new vector, we update the mask first,
		 * do a write memory barrier, and then update the count, to
		 * make sure the vector is visible when count is set.
		 */
		FUNC8();
		FUNC2(&(vec)->count);
		do_mb = 1;
	}
	if (FUNC6(oldpri != CPUPRI_INVALID)) {
		struct cpupri_vec *vec  = &cp->pri_to_cpu[oldpri];

		/*
		 * Because the order of modification of the vec->count
		 * is important, we must make sure that the update
		 * of the new prio is seen before we decrement the
		 * old prio. This makes sure that the loop sees
		 * one or the other when we raise the priority of
		 * the run queue. We don't care about when we lower the
		 * priority, as that will trigger an rt pull anyway.
		 *
		 * We only need to do a memory barrier if we updated
		 * the new priority vec.
		 */
		if (do_mb)
			FUNC7();

		/*
		 * When removing from the vector, we decrement the counter first
		 * do a memory barrier and then clear the mask.
		 */
		FUNC1(&(vec)->count);
		FUNC7();
		FUNC4(cpu, vec->mask);
	}

	*currpri = newpri;
}