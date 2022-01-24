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
struct irq_domain {size_t revmap_size; int /*<<< orphan*/  revmap_tree_mutex; int /*<<< orphan*/  revmap_tree; int /*<<< orphan*/ * linear_revmap; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;
typedef  size_t irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,struct irq_data*) ; 

__attribute__((used)) static void FUNC3(struct irq_domain *domain,
				   irq_hw_number_t hwirq,
				   struct irq_data *irq_data)
{
	if (hwirq < domain->revmap_size) {
		domain->linear_revmap[hwirq] = irq_data->irq;
	} else {
		FUNC0(&domain->revmap_tree_mutex);
		FUNC2(&domain->revmap_tree, hwirq, irq_data);
		FUNC1(&domain->revmap_tree_mutex);
	}
}