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
struct irq_affinity {unsigned int pre_vectors; unsigned int post_vectors; scalar_t__ calc_sets; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_possible_mask ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

unsigned int FUNC4(unsigned int minvec, unsigned int maxvec,
				       const struct irq_affinity *affd)
{
	unsigned int resv = affd->pre_vectors + affd->post_vectors;
	unsigned int set_vecs;

	if (resv > minvec)
		return 0;

	if (affd->calc_sets) {
		set_vecs = maxvec - resv;
	} else {
		FUNC1();
		set_vecs = FUNC0(cpu_possible_mask);
		FUNC3();
	}

	return resv + FUNC2(set_vecs, maxvec - resv);
}