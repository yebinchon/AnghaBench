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
struct snd_mixart {int** digital_capture_volume; int** digital_playback_volume; TYPE_3__* mgr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  mixer_mutex; } ;

/* Variables and functions */
 int MIXART_DIGITAL_LEVEL_MAX ; 
 int MIXART_DIGITAL_LEVEL_MIN ; 
 int MIXART_PLAYBACK_STREAMS ; 
 int MIXART_VOL_AES_MASK ; 
 int MIXART_VOL_REC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_mixart*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixart*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_mixart* FUNC6 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_mixart *chip = FUNC6(kcontrol);
	int idx = FUNC5(kcontrol, &ucontrol->id); /* index */
	int changed = 0;
	int is_capture = kcontrol->private_value & MIXART_VOL_REC_MASK;
	int is_aes = kcontrol->private_value & MIXART_VOL_AES_MASK;
	int* stored_volume;
	int i;
	FUNC2(&chip->mgr->mixer_mutex);
	if (is_capture) {
		if (is_aes)	/* AES capture */
			stored_volume = chip->digital_capture_volume[1];
		else		/* analog capture */
			stored_volume = chip->digital_capture_volume[0];
	} else {
		FUNC4(idx >= MIXART_PLAYBACK_STREAMS);
		if (is_aes)	/* AES playback */
			stored_volume = chip->digital_playback_volume[MIXART_PLAYBACK_STREAMS + idx];
		else		/* analog playback */
			stored_volume = chip->digital_playback_volume[idx];
	}
	for (i = 0; i < 2; i++) {
		int vol = ucontrol->value.integer.value[i];
		if (vol < MIXART_DIGITAL_LEVEL_MIN ||
		    vol > MIXART_DIGITAL_LEVEL_MAX)
			continue;
		if (stored_volume[i] != vol) {
			stored_volume[i] = vol;
			changed = 1;
		}
	}
	if (changed) {
		if (is_capture)
			FUNC0(chip, is_aes);
		else
			FUNC1(chip, is_aes, idx);
	}
	FUNC3(&chip->mgr->mixer_mutex);
	return changed;
}