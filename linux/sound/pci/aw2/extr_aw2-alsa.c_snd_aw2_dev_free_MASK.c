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
struct snd_device {struct aw2* device_data; } ;
struct aw2 {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  iobase_virt; int /*<<< orphan*/  saa7146; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aw2*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_device *device)
{
	struct aw2 *chip = device->device_data;

	/* Free hardware */
	FUNC5(&chip->saa7146);

	/* release the irq */
	if (chip->irq >= 0)
		FUNC0(chip->irq, (void *)chip);
	/* release the i/o ports & memory */
	FUNC1(chip->iobase_virt);
	FUNC4(chip->pci);
	/* disable the PCI entry */
	FUNC3(chip->pci);
	/* release the data */
	FUNC2(chip);

	return 0;
}