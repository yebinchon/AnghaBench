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
struct irq_matrix {unsigned int matrix_bits; int online_maps; unsigned int alloc_start; unsigned int alloc_end; int /*<<< orphan*/  systembits_inalloc; int /*<<< orphan*/  total_allocated; int /*<<< orphan*/  system_map; int /*<<< orphan*/  maps; } ;
struct cpumap {int /*<<< orphan*/  allocated; int /*<<< orphan*/  alloc_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 struct cpumap* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct irq_matrix*) ; 

void FUNC5(struct irq_matrix *m, unsigned int bit,
			      bool replace)
{
	struct cpumap *cm = FUNC3(m->maps);

	FUNC0(bit > m->matrix_bits);
	FUNC0(m->online_maps > 1 || (m->online_maps && !replace));

	FUNC1(bit, m->system_map);
	if (replace) {
		FUNC0(!FUNC2(bit, cm->alloc_map));
		cm->allocated--;
		m->total_allocated--;
	}
	if (bit >= m->alloc_start && bit < m->alloc_end)
		m->systembits_inalloc++;

	FUNC4(bit, m);
}