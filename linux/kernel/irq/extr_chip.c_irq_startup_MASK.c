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
struct irq_desc {scalar_t__ depth; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
#define  IRQ_STARTUP_ABORT 130 
#define  IRQ_STARTUP_MANAGED 129 
#define  IRQ_STARTUP_NORMAL 128 
 int FUNC0 (struct irq_desc*) ; 
 int FUNC1 (struct irq_desc*,struct cpumask*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 
 struct cpumask* FUNC3 (struct irq_data*) ; 
 struct irq_data* FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*,struct cpumask*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_desc*) ; 
 scalar_t__ FUNC8 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct irq_data*) ; 

int FUNC10(struct irq_desc *desc, bool resend, bool force)
{
	struct irq_data *d = FUNC4(desc);
	struct cpumask *aff = FUNC3(d);
	int ret = 0;

	desc->depth = 0;

	if (FUNC8(d)) {
		FUNC6(desc);
	} else {
		switch (FUNC1(desc, aff, force)) {
		case IRQ_STARTUP_NORMAL:
			ret = FUNC0(desc);
			FUNC7(desc);
			break;
		case IRQ_STARTUP_MANAGED:
			FUNC5(d, aff, false);
			ret = FUNC0(desc);
			break;
		case IRQ_STARTUP_ABORT:
			FUNC9(d);
			return 0;
		}
	}
	if (resend)
		FUNC2(desc);

	return ret;
}