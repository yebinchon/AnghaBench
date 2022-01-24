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
struct via82xx_modem {scalar_t__ irq; unsigned int num_devs; int /*<<< orphan*/  pci; int /*<<< orphan*/ * devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct via82xx_modem*) ; 
 int /*<<< orphan*/  FUNC1 (struct via82xx_modem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct via82xx_modem*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct via82xx_modem *chip)
{
	unsigned int i;

	if (chip->irq < 0)
		goto __end_hw;
	/* disable interrupts */
	for (i = 0; i < chip->num_devs; i++)
		FUNC4(chip, &chip->devs[i]);

      __end_hw:
	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);
	FUNC3(chip->pci);
	FUNC2(chip->pci);
	FUNC1(chip);
	return 0;
}