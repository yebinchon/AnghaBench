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
struct snd_cs46xx {int amplifier; TYPE_1__* eapd_switch; int /*<<< orphan*/  card; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_POWERDOWN ; 
 int /*<<< orphan*/  CS46XX_PRIMARY_CODEC_INDEX ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_cs46xx*) ; 

__attribute__((used)) static void FUNC4(struct snd_cs46xx *chip, int change)
{
	/* Manage the EAPD bit on the Crystal 4297 
	   and the Analog AD1885 */
	   
#ifdef CONFIG_SND_CS46XX_NEW_DSP
	int old = chip->amplifier;
#endif
	int oval, val;
	
	chip->amplifier += change;
	oval = FUNC0(chip, AC97_POWERDOWN,
				     CS46XX_PRIMARY_CODEC_INDEX);
	val = oval;
	if (chip->amplifier) {
		/* Turn the EAPD amp on */
		val |= 0x8000;
	} else {
		/* Turn the EAPD amp off */
		val &= ~0x8000;
	}
	if (val != oval) {
		FUNC1(chip, AC97_POWERDOWN, val,
				       CS46XX_PRIMARY_CODEC_INDEX);
		if (chip->eapd_switch)
			FUNC2(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
				       &chip->eapd_switch->id);
	}

#ifdef CONFIG_SND_CS46XX_NEW_DSP
	if (chip->amplifier && !old) {
		voyetra_setup_eapd_slot(chip);
	}
#endif
}