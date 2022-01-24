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
struct irq_domain {int bus_token; char* name; int flags; } ;
typedef  enum irq_domain_bus_token { ____Placeholder_irq_domain_bus_token } irq_domain_bus_token ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQ_DOMAIN_NAME_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*) ; 
 int /*<<< orphan*/  irq_domain_mutex ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct irq_domain *domain,
				 enum irq_domain_bus_token bus_token)
{
	char *name;

	if (domain->bus_token == bus_token)
		return;

	FUNC4(&irq_domain_mutex);

	domain->bus_token = bus_token;

	name = FUNC2(GFP_KERNEL, "%s-%d", domain->name, bus_token);
	if (!name) {
		FUNC5(&irq_domain_mutex);
		return;
	}

	FUNC1(domain);

	if (domain->flags & IRQ_DOMAIN_NAME_ALLOCATED)
		FUNC3(domain->name);
	else
		domain->flags |= IRQ_DOMAIN_NAME_ALLOCATED;

	domain->name = name;
	FUNC0(domain);

	FUNC5(&irq_domain_mutex);
}