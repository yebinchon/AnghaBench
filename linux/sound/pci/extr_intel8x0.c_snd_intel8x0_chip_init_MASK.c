#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel8x0 {scalar_t__ device_type; unsigned int bdbars_count; TYPE_2__* ichd; TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdbar_addr; scalar_t__ reg_offset; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DEVICE_ALI ; 
 scalar_t__ ICH_REG_OFF_BDBAR ; 
 scalar_t__ ICH_REG_OFF_CR ; 
 int ICH_RESETREGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel8x0*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel8x0*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct intel8x0*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel8x0*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct intel8x0*,int) ; 
 int FUNC6 (struct intel8x0*,int) ; 

__attribute__((used)) static int FUNC7(struct intel8x0 *chip, int probing)
{
	unsigned int i, timeout;
	int err;
	
	if (chip->device_type != DEVICE_ALI) {
		if ((err = FUNC6(chip, probing)) < 0)
			return err;
		FUNC1(chip, 0);	/* clear semaphore flag */
	} else {
		if ((err = FUNC5(chip, probing)) < 0)
			return err;
	}

	/* disable interrupts */
	for (i = 0; i < chip->bdbars_count; i++)
		FUNC3(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset, 0x00);
	/* reset channels */
	for (i = 0; i < chip->bdbars_count; i++)
		FUNC3(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset, ICH_RESETREGS);
	for (i = 0; i < chip->bdbars_count; i++) {
	        timeout = 100000;
	        while (--timeout != 0) {
        		if ((FUNC2(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset) & ICH_RESETREGS) == 0)
        		        break;
                }
                if (timeout == 0)
			FUNC0(chip->card->dev, "reset of registers failed?\n");
        }
	/* initialize Buffer Descriptor Lists */
	for (i = 0; i < chip->bdbars_count; i++)
		FUNC4(chip, ICH_REG_OFF_BDBAR + chip->ichd[i].reg_offset,
			  chip->ichd[i].bdbar_addr);
	return 0;
}