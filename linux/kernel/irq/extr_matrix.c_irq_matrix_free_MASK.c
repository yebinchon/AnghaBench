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
struct irq_matrix {unsigned int alloc_start; unsigned int alloc_end; int /*<<< orphan*/  global_available; int /*<<< orphan*/  total_allocated; int /*<<< orphan*/  maps; } ;
struct cpumap {scalar_t__ online; int /*<<< orphan*/  available; int /*<<< orphan*/  managed_allocated; int /*<<< orphan*/  allocated; int /*<<< orphan*/  alloc_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 struct cpumap* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,struct irq_matrix*,struct cpumap*) ; 

void FUNC4(struct irq_matrix *m, unsigned int cpu,
		     unsigned int bit, bool managed)
{
	struct cpumap *cm = FUNC2(m->maps, cpu);

	if (FUNC0(bit < m->alloc_start || bit >= m->alloc_end))
		return;

	FUNC1(bit, cm->alloc_map);
	cm->allocated--;
	if(managed)
		cm->managed_allocated--;

	if (cm->online)
		m->total_allocated--;

	if (!managed) {
		cm->available++;
		if (cm->online)
			m->global_available++;
	}
	FUNC3(bit, cpu, m, cm);
}