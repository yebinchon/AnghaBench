#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_domain {int dummy; } ;
struct irq_data {TYPE_1__* common; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {unsigned int ipi_offset; int /*<<< orphan*/  affinity; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQ_NO_BALANCING ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC0 (struct irq_domain*,int,unsigned int,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 unsigned int FUNC2 (struct cpumask const*) ; 
 unsigned int FUNC3 (unsigned int,struct cpumask const*) ; 
 unsigned int FUNC4 (unsigned int,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpumask const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct cpumask const*) ; 
 int FUNC7 (int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_domain*) ; 
 scalar_t__ FUNC9 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned int) ; 
 struct irq_data* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14(struct irq_domain *domain,
			     const struct cpumask *dest)
{
	unsigned int nr_irqs, offset;
	struct irq_data *data;
	int virq, i;

	if (!domain ||!FUNC8(domain)) {
		FUNC13("Reservation on a non IPI domain\n");
		return -EINVAL;
	}

	if (!FUNC5(dest, cpu_possible_mask)) {
		FUNC13("Reservation is not in possible_cpu_mask\n");
		return -EINVAL;
	}

	nr_irqs = FUNC6(dest);
	if (!nr_irqs) {
		FUNC13("Reservation for empty destination mask\n");
		return -EINVAL;
	}

	if (FUNC9(domain)) {
		/*
		 * If the underlying implementation uses a single HW irq on
		 * all cpus then we only need a single Linux irq number for
		 * it. We have no restrictions vs. the destination mask. The
		 * underlying implementation can deal with holes nicely.
		 */
		nr_irqs = 1;
		offset = 0;
	} else {
		unsigned int next;

		/*
		 * The IPI requires a separate HW irq on each CPU. We require
		 * that the destination mask is consecutive. If an
		 * implementation needs to support holes, it can reserve
		 * several IPI ranges.
		 */
		offset = FUNC2(dest);
		/*
		 * Find a hole and if found look for another set bit after the
		 * hole. For now we don't support this scenario.
		 */
		next = FUNC4(offset, dest);
		if (next < nr_cpu_ids)
			next = FUNC3(next, dest);
		if (next < nr_cpu_ids) {
			FUNC13("Destination mask has holes\n");
			return -EINVAL;
		}
	}

	virq = FUNC7(-1, nr_irqs, 0, NUMA_NO_NODE, NULL);
	if (virq <= 0) {
		FUNC13("Can't reserve IPI, failed to alloc descs\n");
		return -ENOMEM;
	}

	virq = FUNC0(domain, virq, nr_irqs, NUMA_NO_NODE,
				       (void *) dest, true, NULL);

	if (virq <= 0) {
		FUNC13("Can't reserve IPI, failed to alloc hw irqs\n");
		goto free_descs;
	}

	for (i = 0; i < nr_irqs; i++) {
		data = FUNC11(virq + i);
		FUNC1(data->common->affinity, dest);
		data->common->ipi_offset = offset;
		FUNC12(virq + i, IRQ_NO_BALANCING);
	}
	return virq;

free_descs:
	FUNC10(virq, nr_irqs);
	return -EBUSY;
}