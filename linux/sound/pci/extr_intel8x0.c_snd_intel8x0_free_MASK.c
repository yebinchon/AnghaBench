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
struct TYPE_4__ {scalar_t__ area; } ;
struct intel8x0 {scalar_t__ irq; unsigned int bdbars_count; scalar_t__ device_type; int /*<<< orphan*/  pci; scalar_t__ bmaddr; scalar_t__ addr; TYPE_2__ bdbars; TYPE_1__* ichd; } ;
struct TYPE_3__ {scalar_t__ reg_offset; } ;

/* Variables and functions */
 scalar_t__ DEVICE_NFORCE ; 
 scalar_t__ ICH_REG_OFF_CR ; 
 int ICH_RESETREGS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct intel8x0*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel8x0*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel8x0*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  spdif_aclink ; 

__attribute__((used)) static int FUNC9(struct intel8x0 *chip)
{
	unsigned int i;

	if (chip->irq < 0)
		goto __hw_end;
	/* disable interrupts */
	for (i = 0; i < chip->bdbars_count; i++)
		FUNC1(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset, 0x00);
	/* reset channels */
	for (i = 0; i < chip->bdbars_count; i++)
		FUNC1(chip, ICH_REG_OFF_CR + chip->ichd[i].reg_offset, ICH_RESETREGS);
	if (chip->device_type == DEVICE_NFORCE && !spdif_aclink) {
		/* stop the spdif interrupt */
		unsigned int val;
		FUNC5(chip->pci, 0x4c, &val);
		val &= ~0x1000000;
		FUNC7(chip->pci, 0x4c, val);
	}
	/* --- */

      __hw_end:
	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);
	if (chip->bdbars.area)
		FUNC8(&chip->bdbars);
	if (chip->addr)
		FUNC4(chip->pci, chip->addr);
	if (chip->bmaddr)
		FUNC4(chip->pci, chip->bmaddr);
	FUNC6(chip->pci);
	FUNC3(chip->pci);
	FUNC2(chip);
	return 0;
}