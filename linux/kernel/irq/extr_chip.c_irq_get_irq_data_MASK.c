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
struct irq_data {int dummy; } ;
struct irq_desc {struct irq_data irq_data; } ;

/* Variables and functions */
 struct irq_desc* FUNC0 (unsigned int) ; 

struct irq_data *FUNC1(unsigned int irq)
{
	struct irq_desc *desc = FUNC0(irq);

	return desc ? &desc->irq_data : NULL;
}