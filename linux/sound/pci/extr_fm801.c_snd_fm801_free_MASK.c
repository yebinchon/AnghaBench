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
struct fm801 {scalar_t__ irq; int tea575x_tuner; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  tea; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_MASK ; 
 int TUNER_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,struct fm801*) ; 
 unsigned short FUNC1 (struct fm801*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fm801*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct fm801 *chip)
{
	unsigned short cmdw;

	if (chip->irq < 0)
		goto __end_hw;

	/* interrupt setup - mask everything */
	cmdw = FUNC1(chip, IRQ_MASK);
	cmdw |= 0x00c3;
	FUNC2(chip, IRQ_MASK, cmdw);

	FUNC0(chip->dev, chip->irq, chip);

      __end_hw:
#ifdef CONFIG_SND_FM801_TEA575X_BOOL
	if (!(chip->tea575x_tuner & TUNER_DISABLED)) {
		snd_tea575x_exit(&chip->tea);
		v4l2_device_unregister(&chip->v4l2_dev);
	}
#endif
	return 0;
}