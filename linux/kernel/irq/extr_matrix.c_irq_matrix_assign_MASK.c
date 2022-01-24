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
struct cpumap {int /*<<< orphan*/  available; int /*<<< orphan*/  allocated; int /*<<< orphan*/  alloc_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 struct cpumap* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,struct irq_matrix*,struct cpumap*) ; 

void FUNC5(struct irq_matrix *m, unsigned int bit)
{
	struct cpumap *cm = FUNC3(m->maps);

	if (FUNC0(bit < m->alloc_start || bit >= m->alloc_end))
		return;
	if (FUNC0(FUNC2(bit, cm->alloc_map)))
		return;
	cm->allocated++;
	m->total_allocated++;
	cm->available--;
	m->global_available--;
	FUNC4(bit, FUNC1(), m, cm);
}