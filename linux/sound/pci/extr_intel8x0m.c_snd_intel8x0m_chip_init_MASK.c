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
struct intel8x0m {unsigned int bdbars_count; TYPE_1__* ichd; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdbar_addr; scalar_t__ reg_offset; } ;

/* Variables and functions */
 scalar_t__ ICH_REG_OFF_BDBAR ; 
 scalar_t__ ICH_REG_OFF_CR ; 
 int ICH_RESETREGS ; 
 int /*<<< orphan*/  FUNC0 (struct intel8x0m*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel8x0m*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel8x0m*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel8x0m*,int) ; 

__attribute__((used)) static int FUNC4(struct intel8x0m *chip, int probing)
{
	unsigned int i;
	int err;
	
	if ((err = FUNC3(chip, probing)) < 0)
		return err;
	FUNC0(chip, 0);	/* clear semaphore flag */

	/* disable interrupts */
	for (i = 0; i < chip->bdbars_count; i++)
		FUNC1(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset, 0x00);
	/* reset channels */
	for (i = 0; i < chip->bdbars_count; i++)
		FUNC1(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset, ICH_RESETREGS);
	/* initialize Buffer Descriptor Lists */
	for (i = 0; i < chip->bdbars_count; i++)
		FUNC2(chip, ICH_REG_OFF_BDBAR + chip->ichd[i].reg_offset, chip->ichd[i].bdbar_addr);
	return 0;
}