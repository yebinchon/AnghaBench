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
struct irq_matrix {unsigned int alloc_start; unsigned int alloc_end; int /*<<< orphan*/  scratch_map; int /*<<< orphan*/  system_map; } ;
struct cpumap {int /*<<< orphan*/  alloc_map; int /*<<< orphan*/  managed_map; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(struct irq_matrix *m, struct cpumap *cm,
				      unsigned int num, bool managed)
{
	unsigned int area, start = m->alloc_start;
	unsigned int end = m->alloc_end;

	FUNC1(m->scratch_map, cm->managed_map, m->system_map, end);
	FUNC1(m->scratch_map, m->scratch_map, cm->alloc_map, end);
	area = FUNC0(m->scratch_map, end, start, num, 0);
	if (area >= end)
		return area;
	if (managed)
		FUNC2(cm->managed_map, area, num);
	else
		FUNC2(cm->alloc_map, area, num);
	return area;
}