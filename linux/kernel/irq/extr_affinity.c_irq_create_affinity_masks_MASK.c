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
struct irq_affinity_desc {int is_managed; int /*<<< orphan*/  mask; } ;
struct irq_affinity {unsigned int pre_vectors; unsigned int post_vectors; unsigned int nr_sets; unsigned int* set_size; int /*<<< orphan*/  (* calc_sets ) (struct irq_affinity*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int IRQ_AFFINITY_MAX_SETS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_affinity*,unsigned int) ; 
 int FUNC3 (unsigned int,unsigned int,unsigned int,struct irq_affinity_desc*) ; 
 int /*<<< orphan*/  irq_default_affinity ; 
 struct irq_affinity_desc* FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_affinity_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_affinity*,unsigned int) ; 

struct irq_affinity_desc *
FUNC7(unsigned int nvecs, struct irq_affinity *affd)
{
	unsigned int affvecs, curvec, usedvecs, i;
	struct irq_affinity_desc *masks = NULL;

	/*
	 * Determine the number of vectors which need interrupt affinities
	 * assigned. If the pre/post request exhausts the available vectors
	 * then nothing to do here except for invoking the calc_sets()
	 * callback so the device driver can adjust to the situation.
	 */
	if (nvecs > affd->pre_vectors + affd->post_vectors)
		affvecs = nvecs - affd->pre_vectors - affd->post_vectors;
	else
		affvecs = 0;

	/*
	 * Simple invocations do not provide a calc_sets() callback. Install
	 * the generic one.
	 */
	if (!affd->calc_sets)
		affd->calc_sets = default_calc_sets;

	/* Recalculate the sets */
	affd->calc_sets(affd, affvecs);

	if (FUNC0(affd->nr_sets > IRQ_AFFINITY_MAX_SETS))
		return NULL;

	/* Nothing to assign? */
	if (!affvecs)
		return NULL;

	masks = FUNC4(nvecs, sizeof(*masks), GFP_KERNEL);
	if (!masks)
		return NULL;

	/* Fill out vectors at the beginning that don't need affinity */
	for (curvec = 0; curvec < affd->pre_vectors; curvec++)
		FUNC1(&masks[curvec].mask, irq_default_affinity);

	/*
	 * Spread on present CPUs starting from affd->pre_vectors. If we
	 * have multiple sets, build each sets affinity mask separately.
	 */
	for (i = 0, usedvecs = 0; i < affd->nr_sets; i++) {
		unsigned int this_vecs = affd->set_size[i];
		int ret;

		ret = FUNC3(curvec, this_vecs,
					       curvec, masks);
		if (ret) {
			FUNC5(masks);
			return NULL;
		}
		curvec += this_vecs;
		usedvecs += this_vecs;
	}

	/* Fill out vectors at the end that don't need affinity */
	if (usedvecs >= affvecs)
		curvec = affd->pre_vectors + affvecs;
	else
		curvec = affd->pre_vectors + usedvecs;
	for (; curvec < nvecs; curvec++)
		FUNC1(&masks[curvec].mask, irq_default_affinity);

	/* Mark the managed interrupts */
	for (i = affd->pre_vectors; i < nvecs - affd->post_vectors; i++)
		masks[i].is_managed = 1;

	return masks;
}