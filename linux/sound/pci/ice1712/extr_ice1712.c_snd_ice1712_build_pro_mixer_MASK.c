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
struct snd_kcontrol_new {int count; } ;
struct snd_ice1712 {int num_total_adcs; int* pro_volumes; struct snd_card* card; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol_new*) ; 
 int FUNC1 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol_new*,struct snd_ice1712*) ; 
 struct snd_kcontrol_new snd_ice1712_multi_capture_analog_switch ; 
 struct snd_kcontrol_new snd_ice1712_multi_capture_analog_volume ; 
 struct snd_kcontrol_new snd_ice1712_multi_capture_spdif_switch ; 
 struct snd_kcontrol_new snd_ice1712_multi_capture_spdif_volume ; 
 struct snd_kcontrol_new* snd_ice1712_multi_playback_ctrls ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_ice1712 *ice)
{
	struct snd_card *card = ice->card;
	unsigned int idx;
	int err;

	/* multi-channel mixer */
	for (idx = 0; idx < FUNC0(snd_ice1712_multi_playback_ctrls); idx++) {
		err = FUNC1(card, FUNC2(&snd_ice1712_multi_playback_ctrls[idx], ice));
		if (err < 0)
			return err;
	}

	if (ice->num_total_adcs > 0) {
		struct snd_kcontrol_new tmp = snd_ice1712_multi_capture_analog_switch;
		tmp.count = ice->num_total_adcs;
		err = FUNC1(card, FUNC2(&tmp, ice));
		if (err < 0)
			return err;
	}

	err = FUNC1(card, FUNC2(&snd_ice1712_multi_capture_spdif_switch, ice));
	if (err < 0)
		return err;

	if (ice->num_total_adcs > 0) {
		struct snd_kcontrol_new tmp = snd_ice1712_multi_capture_analog_volume;
		tmp.count = ice->num_total_adcs;
		err = FUNC1(card, FUNC2(&tmp, ice));
		if (err < 0)
			return err;
	}

	err = FUNC1(card, FUNC2(&snd_ice1712_multi_capture_spdif_volume, ice));
	if (err < 0)
		return err;

	/* initialize volumes */
	for (idx = 0; idx < 10; idx++) {
		ice->pro_volumes[idx] = 0x80008000;	/* mute */
		FUNC3(ice, idx);
	}
	for (idx = 10; idx < 10 + ice->num_total_adcs; idx++) {
		ice->pro_volumes[idx] = 0x80008000;	/* mute */
		FUNC3(ice, idx);
	}
	for (idx = 18; idx < 20; idx++) {
		ice->pro_volumes[idx] = 0x80008000;	/* mute */
		FUNC3(ice, idx);
	}
	return 0;
}