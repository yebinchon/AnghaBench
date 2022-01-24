#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_opl3sa2 {TYPE_3__* master_volume; TYPE_2__* master_switch; int /*<<< orphan*/  wss; TYPE_1__* rmidi; int /*<<< orphan*/  synth; } ;
struct snd_card {struct snd_opl3sa2* private_data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OPL3SA2_IRQ_STATUS ; 
 int /*<<< orphan*/  OPL3SA2_MASTER_LEFT ; 
 int /*<<< orphan*/  OPL3SA2_MASTER_RIGHT ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC4 (struct snd_opl3sa2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	unsigned short status;
	struct snd_card *card = dev_id;
	struct snd_opl3sa2 *chip;
	int handled = 0;

	if (card == NULL)
		return IRQ_NONE;

	chip = card->private_data;
	status = FUNC4(chip, OPL3SA2_IRQ_STATUS);

	if (status & 0x20) {
		handled = 1;
		FUNC3(chip->synth);
	}

	if ((status & 0x10) && chip->rmidi != NULL) {
		handled = 1;
		FUNC2(irq, chip->rmidi->private_data);
	}

	if (status & 0x07) {	/* TI,CI,PI */
		handled = 1;
		FUNC5(irq, chip->wss);
	}

	if (status & 0x40) { /* hardware volume change */
		handled = 1;
		/* reading from Master Lch register at 0x07 clears this bit */
		FUNC4(chip, OPL3SA2_MASTER_RIGHT);
		FUNC4(chip, OPL3SA2_MASTER_LEFT);
		if (chip->master_switch && chip->master_volume) {
			FUNC1(card, SNDRV_CTL_EVENT_MASK_VALUE,
					&chip->master_switch->id);
			FUNC1(card, SNDRV_CTL_EVENT_MASK_VALUE,
					&chip->master_volume->id);
		}
	}
	return FUNC0(handled);
}