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
typedef  int u32 ;
struct hdac_bus {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  dev; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTSTS ; 
 int IRQ_NONE ; 
 int IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC4(int irq, void *context)
{
	struct hdac_bus *bus = context;
	int ret = IRQ_WAKE_THREAD;
	u32 status;

	FUNC2(&bus->reg_lock);

	status = FUNC1(bus, INTSTS);
	FUNC0(bus->dev, "stream irq, INTSTS status: 0x%x\n", status);

	/* Register inaccessible, ignore it.*/
	if (status == 0xffffffff)
		ret = IRQ_NONE;

	FUNC3(&bus->reg_lock);

	return ret;
}