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
typedef  unsigned int u32 ;
struct module {int dummy; } ;
struct irq_desc {struct module* owner; } ;
struct irq_affinity_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  allocated_irqs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct irq_desc* FUNC1 (unsigned int) ; 

__attribute__((used)) static inline int FUNC2(unsigned int start, unsigned int cnt, int node,
			      const struct irq_affinity_desc *affinity,
			      struct module *owner)
{
	u32 i;

	for (i = 0; i < cnt; i++) {
		struct irq_desc *desc = FUNC1(start + i);

		desc->owner = owner;
	}
	FUNC0(allocated_irqs, start, cnt);
	return start;
}