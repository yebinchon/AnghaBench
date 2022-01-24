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
struct es1968 {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  tea; scalar_t__ io_port; scalar_t__ input_dev; int /*<<< orphan*/  hwvol_work; } ;

/* Variables and functions */
 scalar_t__ ESM_PORT_HOST_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct es1968*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct es1968*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct es1968*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct es1968 *chip)
{
	FUNC0(&chip->hwvol_work);
#ifdef CONFIG_SND_ES1968_INPUT
	if (chip->input_dev)
		input_unregister_device(chip->input_dev);
#endif

	if (chip->io_port) {
		if (chip->irq >= 0)
			FUNC9(chip->irq);
		FUNC4(1, chip->io_port + 0x04); /* clear WP interrupts */
		FUNC4(0, chip->io_port + ESM_PORT_HOST_IRQ); /* disable IRQ */
	}

#ifdef CONFIG_SND_ES1968_RADIO
	snd_tea575x_exit(&chip->tea);
	v4l2_device_unregister(&chip->v4l2_dev);
#endif

	if (chip->irq >= 0)
		FUNC1(chip->irq, chip);
	FUNC7(chip);
	FUNC6(chip->pci);
	FUNC5(chip->pci);
	FUNC3(chip);
	return 0;
}