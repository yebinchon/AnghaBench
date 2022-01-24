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
struct hdac_bus {int /*<<< orphan*/  irq; } ;
struct azx {scalar_t__ msi; TYPE_2__* pci; TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_descr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 struct hdac_bus* FUNC0 (struct azx*) ; 
 int /*<<< orphan*/  azx_interrupt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct azx*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct azx *chip, int do_disconnect)
{
	struct hdac_bus *bus = FUNC0(chip);

	if (FUNC3(chip->pci->irq, azx_interrupt,
			chip->msi ? 0 : IRQF_SHARED,
			chip->card->irq_descr, chip)) {
		FUNC1(chip->card->dev,
			"unable to grab IRQ %d, disabling device\n",
			chip->pci->irq);
		if (do_disconnect)
			FUNC4(chip->card);
		return -1;
	}
	bus->irq = chip->pci->irq;
	FUNC2(chip->pci, !chip->msi);
	return 0;
}