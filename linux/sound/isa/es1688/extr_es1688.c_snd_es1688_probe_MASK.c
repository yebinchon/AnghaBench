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
struct snd_opl3 {int dummy; } ;
struct snd_es1688 {scalar_t__ mpu_port; TYPE_1__* pcm; int /*<<< orphan*/  dma8; int /*<<< orphan*/  irq; int /*<<< orphan*/  port; } ;
struct snd_card {int /*<<< orphan*/  dev; int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; struct snd_es1688* private_data; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPU401_HW_ES1688 ; 
 int /*<<< orphan*/  OPL3_HW_OPL3 ; 
 scalar_t__ SNDRV_AUTO_IRQ ; 
 scalar_t__ SNDRV_AUTO_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__* fm_port ; 
 scalar_t__* mpu_irq ; 
 scalar_t__* port ; 
 int FUNC1 (struct snd_card*) ; 
 int FUNC2 (struct snd_card*,struct snd_es1688*) ; 
 int FUNC3 (struct snd_card*,struct snd_es1688*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct snd_card*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_opl3**) ; 
 int FUNC6 (struct snd_opl3*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC9(struct snd_card *card, unsigned int n)
{
	struct snd_es1688 *chip = card->private_data;
	struct snd_opl3 *opl3;
	int error;

	error = FUNC3(card, chip, 0);
	if (error < 0)
		return error;

	error = FUNC2(card, chip);
	if (error < 0)
		return error;

	FUNC8(card->driver, "ES1688", sizeof(card->driver));
	FUNC8(card->shortname, chip->pcm->name, sizeof(card->shortname));
	FUNC7(card->longname, sizeof(card->longname),
		"%s at 0x%lx, irq %i, dma %i", chip->pcm->name, chip->port,
		 chip->irq, chip->dma8);

	if (fm_port[n] == SNDRV_AUTO_PORT)
		fm_port[n] = port[n];	/* share the same port */

	if (fm_port[n] > 0) {
		if (FUNC5(card, fm_port[n], fm_port[n] + 2,
				OPL3_HW_OPL3, 0, &opl3) < 0)
			FUNC0(card->dev,
				 "opl3 not detected at 0x%lx\n", fm_port[n]);
		else {
			error =	FUNC6(opl3, 0, 1, NULL);
			if (error < 0)
				return error;
		}
	}

	if (mpu_irq[n] >= 0 && mpu_irq[n] != SNDRV_AUTO_IRQ &&
			chip->mpu_port > 0) {
		error = FUNC4(card, 0, MPU401_HW_ES1688,
				chip->mpu_port, 0,
				mpu_irq[n], NULL);
		if (error < 0)
			return error;
	}

	return FUNC1(card);
}