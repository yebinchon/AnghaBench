#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  device; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct TYPE_5__ {scalar_t__ subvendor; } ;
struct snd_ice1712 {TYPE_3__* pcm; TYPE_4__* card; TYPE_1__ eeprom; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CS8415_ID ; 
 scalar_t__ VT1724_SUBDEVICE_AUREON51_SKY ; 
 scalar_t__ VT1724_SUBDEVICE_AUREON71_UNIVERSE ; 
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71LT ; 
 scalar_t__ VT1724_SUBDEVICE_PRODIGY71XT ; 
 int /*<<< orphan*/ * ac97_controls ; 
 unsigned char FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * aureon_dac_controls ; 
 int /*<<< orphan*/ * cs8415_controls ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (TYPE_4__*,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC4 (int /*<<< orphan*/ *,struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ice1712*) ; 
 int /*<<< orphan*/ * universe_ac97_controls ; 
 int /*<<< orphan*/ * wm_controls ; 

__attribute__((used)) static int FUNC7(struct snd_ice1712 *ice)
{
	unsigned int i, counts;
	int err;

	counts = FUNC0(aureon_dac_controls);
	if (ice->eeprom.subvendor == VT1724_SUBDEVICE_AUREON51_SKY)
		counts -= 2; /* no side */
	for (i = 0; i < counts; i++) {
		err = FUNC3(ice->card, FUNC4(&aureon_dac_controls[i], ice));
		if (err < 0)
			return err;
	}

	for (i = 0; i < FUNC0(wm_controls); i++) {
		err = FUNC3(ice->card, FUNC4(&wm_controls[i], ice));
		if (err < 0)
			return err;
	}

	if (ice->eeprom.subvendor == VT1724_SUBDEVICE_AUREON71_UNIVERSE) {
		for (i = 0; i < FUNC0(universe_ac97_controls); i++) {
			err = FUNC3(ice->card, FUNC4(&universe_ac97_controls[i], ice));
			if (err < 0)
				return err;
		}
	} else if (ice->eeprom.subvendor != VT1724_SUBDEVICE_PRODIGY71LT &&
		 ice->eeprom.subvendor != VT1724_SUBDEVICE_PRODIGY71XT) {
		for (i = 0; i < FUNC0(ac97_controls); i++) {
			err = FUNC3(ice->card, FUNC4(&ac97_controls[i], ice));
			if (err < 0)
				return err;
		}
	}

	if (ice->eeprom.subvendor != VT1724_SUBDEVICE_PRODIGY71LT &&
	    ice->eeprom.subvendor != VT1724_SUBDEVICE_PRODIGY71XT) {
		unsigned char id;
		FUNC6(ice);
		id = FUNC1(ice, CS8415_ID);
		if (id != 0x41)
			FUNC2(ice->card->dev,
				 "No CS8415 chip. Skipping CS8415 controls.\n");
		else if ((id & 0x0F) != 0x01)
			FUNC2(ice->card->dev,
				 "Detected unsupported CS8415 rev. (%c)\n",
				 (char)((id & 0x0F) + 'A' - 1));
		else {
			for (i = 0; i < FUNC0(cs8415_controls); i++) {
				struct snd_kcontrol *kctl;
				err = FUNC3(ice->card, (kctl = FUNC4(&cs8415_controls[i], ice)));
				if (err < 0)
					return err;
				if (i > 1)
					kctl->id.device = ice->pcm->device;
			}
		}
		FUNC5(ice);
	}

	return 0;
}