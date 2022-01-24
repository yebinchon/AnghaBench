#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* chip_data; } ;
struct irq_desc {TYPE_1__ irq_data; } ;

/* Variables and functions */
 int EINVAL ; 
 struct irq_desc* FUNC0 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*,unsigned long) ; 

int FUNC2(unsigned int irq, void *data)
{
	unsigned long flags;
	struct irq_desc *desc = FUNC0(irq, &flags, 0);

	if (!desc)
		return -EINVAL;
	desc->irq_data.chip_data = data;
	FUNC1(desc, flags);
	return 0;
}