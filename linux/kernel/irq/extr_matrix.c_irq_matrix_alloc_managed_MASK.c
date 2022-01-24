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
struct irq_matrix {unsigned int alloc_end; int /*<<< orphan*/  total_allocated; int /*<<< orphan*/  scratch_map; int /*<<< orphan*/  maps; } ;
struct cpumask {int dummy; } ;
struct cpumap {int /*<<< orphan*/  managed_allocated; int /*<<< orphan*/  allocated; int /*<<< orphan*/  alloc_map; int /*<<< orphan*/  managed_map; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (struct cpumask const*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (struct irq_matrix*,struct cpumask const*) ; 
 struct cpumap* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int,struct irq_matrix*,struct cpumap*) ; 

int FUNC7(struct irq_matrix *m, const struct cpumask *msk,
			     unsigned int *mapped_cpu)
{
	unsigned int bit, cpu, end = m->alloc_end;
	struct cpumap *cm;

	if (FUNC1(msk))
		return -EINVAL;

	cpu = FUNC3(m, msk);
	if (cpu == UINT_MAX)
		return -ENOSPC;

	cm = FUNC4(m->maps, cpu);
	end = m->alloc_end;
	/* Get managed bit which are not allocated */
	FUNC0(m->scratch_map, cm->managed_map, cm->alloc_map, end);
	bit = FUNC2(m->scratch_map, end);
	if (bit >= end)
		return -ENOSPC;
	FUNC5(bit, cm->alloc_map);
	cm->allocated++;
	cm->managed_allocated++;
	m->total_allocated++;
	*mapped_cpu = cpu;
	FUNC6(bit, cpu, m, cm);
	return bit;
}