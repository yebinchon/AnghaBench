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
struct irq_desc {int /*<<< orphan*/  threads_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct irq_desc* FUNC2 (unsigned int) ; 

bool FUNC3(unsigned int irq)
{
	struct irq_desc *desc = FUNC2(irq);

	if (desc) {
		FUNC0(desc, false);
		return !FUNC1(&desc->threads_active);
	}

	return true;
}