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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IRQ_GET_DESC_CHECK_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 struct irq_desc* FUNC1 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,unsigned long) ; 

__attribute__((used)) static int FUNC3(unsigned int irq)
{
	unsigned long flags;
	struct irq_desc *desc = FUNC1(irq, &flags, IRQ_GET_DESC_CHECK_GLOBAL);

	if (!desc)
		return -EINVAL;
	FUNC0(desc);
	FUNC2(desc, flags);
	return 0;
}