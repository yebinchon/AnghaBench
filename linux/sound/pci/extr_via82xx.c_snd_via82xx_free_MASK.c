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
struct via82xx {scalar_t__ irq; unsigned int num_devs; scalar_t__ chip_type; int /*<<< orphan*/  pci; int /*<<< orphan*/  old_legacy_cfg; int /*<<< orphan*/  old_legacy; int /*<<< orphan*/  mpu_res; int /*<<< orphan*/ * devs; } ;

/* Variables and functions */
 scalar_t__ TYPE_VIA686 ; 
 int /*<<< orphan*/  VIA_FUNC_ENABLE ; 
 int /*<<< orphan*/  VIA_PNP_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct via82xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct via82xx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct via82xx*) ; 
 int /*<<< orphan*/  FUNC7 (struct via82xx*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct via82xx *chip)
{
	unsigned int i;

	if (chip->irq < 0)
		goto __end_hw;
	/* disable interrupts */
	for (i = 0; i < chip->num_devs; i++)
		FUNC7(chip, &chip->devs[i]);

	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);
 __end_hw:
	FUNC5(chip->mpu_res);
	FUNC3(chip->pci);

	if (chip->chip_type == TYPE_VIA686) {
		FUNC6(chip);
		FUNC4(chip->pci, VIA_FUNC_ENABLE, chip->old_legacy);
		FUNC4(chip->pci, VIA_PNP_CONTROL, chip->old_legacy_cfg);
	}
	FUNC2(chip->pci);
	FUNC1(chip);
	return 0;
}