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
struct rt5677_priv {int dummy; } ;
struct irq_domain {struct rt5677_priv* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct rt5677_priv*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  rt5677_irq_chip ; 

__attribute__((used)) static int FUNC4(struct irq_domain *h, unsigned int virq,
			  irq_hw_number_t hw)
{
	struct rt5677_priv *rt5677 = h->host_data;

	FUNC1(virq, rt5677);
	FUNC0(virq, &rt5677_irq_chip);
	FUNC2(virq, 1);
	FUNC3(virq);
	return 0;
}