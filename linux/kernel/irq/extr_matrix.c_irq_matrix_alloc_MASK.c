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
struct irq_matrix {unsigned int alloc_end; int /*<<< orphan*/  global_reserved; int /*<<< orphan*/  global_available; int /*<<< orphan*/  total_allocated; int /*<<< orphan*/  maps; } ;
struct cpumask {int dummy; } ;
struct cpumap {int /*<<< orphan*/  available; int /*<<< orphan*/  allocated; } ;

/* Variables and functions */
 int ENOSPC ; 
 unsigned int UINT_MAX ; 
 unsigned int FUNC0 (struct irq_matrix*,struct cpumap*,int,int) ; 
 unsigned int FUNC1 (struct irq_matrix*,struct cpumask const*) ; 
 struct cpumap* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,struct irq_matrix*,struct cpumap*) ; 

int FUNC4(struct irq_matrix *m, const struct cpumask *msk,
		     bool reserved, unsigned int *mapped_cpu)
{
	unsigned int cpu, bit;
	struct cpumap *cm;

	cpu = FUNC1(m, msk);
	if (cpu == UINT_MAX)
		return -ENOSPC;

	cm = FUNC2(m->maps, cpu);
	bit = FUNC0(m, cm, 1, false);
	if (bit >= m->alloc_end)
		return -ENOSPC;
	cm->allocated++;
	cm->available--;
	m->total_allocated++;
	m->global_available--;
	if (reserved)
		m->global_reserved--;
	*mapped_cpu = cpu;
	FUNC3(bit, cpu, m, cm);
	return bit;

}