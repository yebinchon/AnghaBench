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
struct hdac_bus {int irq; } ;
struct azx {scalar_t__ msi; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int FUNC0 (struct azx*,int) ; 
 struct hdac_bus* FUNC1 (struct azx*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct azx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct azx *chip)
{
	struct hdac_bus *bus = FUNC1(chip);
	int err;

	FUNC2(bus->irq, chip);
	bus->irq = -1;
	FUNC3(chip->pci);
	chip->msi = 0;
	err = FUNC0(chip, 1);
	if (err < 0)
		return err;

	return 0;
}