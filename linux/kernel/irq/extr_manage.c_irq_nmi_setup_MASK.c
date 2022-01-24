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
struct irq_desc {int dummy; } ;
struct irq_data {struct irq_chip* chip; } ;
struct irq_chip {int (* irq_nmi_setup ) (struct irq_data*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 struct irq_data* FUNC0 (struct irq_desc*) ; 
 int FUNC1 (struct irq_data*) ; 

__attribute__((used)) static int FUNC2(struct irq_desc *desc)
{
	struct irq_data *d = FUNC0(desc);
	struct irq_chip *c = d->chip;

	return c->irq_nmi_setup ? c->irq_nmi_setup(d) : -EINVAL;
}