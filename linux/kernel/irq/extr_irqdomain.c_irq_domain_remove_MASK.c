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
struct irq_domain {int flags; struct irq_domain* name; int /*<<< orphan*/  link; int /*<<< orphan*/  revmap_tree; } ;

/* Variables and functions */
 int IRQ_DOMAIN_NAME_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*) ; 
 struct irq_domain* irq_default_domain ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*) ; 
 int /*<<< orphan*/  irq_domain_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(struct irq_domain *domain)
{
	FUNC6(&irq_domain_mutex);
	FUNC1(domain);

	FUNC0(!FUNC10(&domain->revmap_tree));

	FUNC5(&domain->link);

	/*
	 * If the going away domain is the default one, reset it.
	 */
	if (FUNC11(irq_default_domain == domain))
		FUNC3(NULL);

	FUNC7(&irq_domain_mutex);

	FUNC9("Removed domain %s\n", domain->name);

	FUNC8(FUNC2(domain));
	if (domain->flags & IRQ_DOMAIN_NAME_ALLOCATED)
		FUNC4(domain->name);
	FUNC4(domain);
}