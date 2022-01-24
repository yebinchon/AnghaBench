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
struct irq_domain {int dummy; } ;
struct irq_data {struct irq_domain* domain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 scalar_t__ FUNC3 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 struct irq_data* FUNC5 (unsigned int) ; 

void FUNC6(unsigned int virq)
{
	struct irq_data *irq_data = FUNC5(virq);
	struct irq_domain *domain;

	if (!virq || !irq_data)
		return;

	domain = irq_data->domain;
	if (FUNC0(domain == NULL))
		return;

	if (FUNC3(domain)) {
		FUNC2(virq, 1);
	} else {
		FUNC1(domain, virq);
		FUNC4(virq);
	}
}