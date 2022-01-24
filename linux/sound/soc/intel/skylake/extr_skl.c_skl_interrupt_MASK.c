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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTSTS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  RIRBSTS ; 
 int RIRB_INT_MASK ; 
 int RIRB_INT_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*) ; 
 int FUNC2 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct hdac_bus *bus = dev_id;
	u32 status;

	if (!FUNC0(bus->dev))
		return IRQ_NONE;

	FUNC5(&bus->reg_lock);

	status = FUNC3(bus, INTSTS);
	if (status == 0 || status == 0xffffffff) {
		FUNC6(&bus->reg_lock);
		return IRQ_NONE;
	}

	/* clear rirb int */
	status = FUNC2(bus, RIRBSTS);
	if (status & RIRB_INT_MASK) {
		if (status & RIRB_INT_RESPONSE)
			FUNC1(bus);
		FUNC4(bus, RIRBSTS, RIRB_INT_MASK);
	}

	FUNC6(&bus->reg_lock);

	return FUNC3(bus, INTSTS) ? IRQ_WAKE_THREAD : IRQ_HANDLED;
}