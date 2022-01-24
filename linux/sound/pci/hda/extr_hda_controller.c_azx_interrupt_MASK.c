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
typedef  int u32 ;
struct hdac_bus {int /*<<< orphan*/  reg_lock; } ;
struct azx {int driver_caps; scalar_t__ disabled; TYPE_1__* card; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AZX_DCAPS_CTX_WORKAROUND ; 
 int /*<<< orphan*/  INTSTS ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RIRBSTS ; 
 int RIRB_INT_MASK ; 
 int RIRB_INT_RESPONSE ; 
 struct hdac_bus* FUNC1 (struct azx*) ; 
 scalar_t__ FUNC2 (struct azx*) ; 
 int FUNC3 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct azx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct azx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct hdac_bus*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stream_update ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct azx *chip = dev_id;
	struct hdac_bus *bus = FUNC1(chip);
	u32 status;
	bool active, handled = false;
	int repeat = 0; /* count for avoiding endless loop */

#ifdef CONFIG_PM
	if (azx_has_pm_runtime(chip))
		if (!pm_runtime_active(chip->card->dev))
			return IRQ_NONE;
#endif

	FUNC9(&bus->reg_lock);

	if (chip->disabled)
		goto unlock;

	do {
		status = FUNC4(chip, INTSTS);
		if (status == 0 || status == 0xffffffff)
			break;

		handled = true;
		active = false;
		if (FUNC7(bus, status, stream_update))
			active = true;

		/* clear rirb int */
		status = FUNC3(chip, RIRBSTS);
		if (status & RIRB_INT_MASK) {
			active = true;
			if (status & RIRB_INT_RESPONSE) {
				if (chip->driver_caps & AZX_DCAPS_CTX_WORKAROUND)
					FUNC11(80);
				FUNC8(bus);
			}
			FUNC5(chip, RIRBSTS, RIRB_INT_MASK);
		}
	} while (active && ++repeat < 10);

 unlock:
	FUNC10(&bus->reg_lock);

	return FUNC0(handled);
}