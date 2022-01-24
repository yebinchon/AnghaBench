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
struct TYPE_2__ {void* handler_data; } ;
struct irq_desc {TYPE_1__ irq_common_data; } ;
typedef  int /*<<< orphan*/  irq_flow_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct irq_desc* FUNC1 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,unsigned long) ; 

void
FUNC3(unsigned int irq, irq_flow_handler_t handle,
				 void *data)
{
	unsigned long flags;
	struct irq_desc *desc = FUNC1(irq, &flags, 0);

	if (!desc)
		return;

	desc->irq_common_data.handler_data = data;
	FUNC0(desc, handle, 1, NULL);

	FUNC2(desc, flags);
}