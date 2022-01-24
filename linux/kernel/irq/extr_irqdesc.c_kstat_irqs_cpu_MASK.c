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
struct irq_desc {scalar_t__ kstat_irqs; } ;

/* Variables and functions */
 struct irq_desc* FUNC0 (unsigned int) ; 
 unsigned int* FUNC1 (scalar_t__,int) ; 

unsigned int FUNC2(unsigned int irq, int cpu)
{
	struct irq_desc *desc = FUNC0(irq);

	return desc && desc->kstat_irqs ?
			*FUNC1(desc->kstat_irqs, cpu) : 0;
}