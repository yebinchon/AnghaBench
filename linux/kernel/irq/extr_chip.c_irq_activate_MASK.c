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
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct irq_data* FUNC0 (struct irq_desc*) ; 
 int FUNC1 (struct irq_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 

int FUNC3(struct irq_desc *desc)
{
	struct irq_data *d = FUNC0(desc);

	if (!FUNC2(d))
		return FUNC1(d, false);
	return 0;
}