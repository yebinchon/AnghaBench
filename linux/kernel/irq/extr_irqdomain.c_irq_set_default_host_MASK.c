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

/* Variables and functions */
 struct irq_domain* irq_default_domain ; 
 int /*<<< orphan*/  FUNC0 (char*,struct irq_domain*) ; 

void FUNC1(struct irq_domain *domain)
{
	FUNC0("Default domain set to @0x%p\n", domain);

	irq_default_domain = domain;
}