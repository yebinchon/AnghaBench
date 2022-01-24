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
struct snd_kcontrol_new {scalar_t__ count; } ;
struct snd_ice1712 {scalar_t__ num_total_dacs; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol_new*,struct snd_ice1712*) ; 
 struct snd_kcontrol_new snd_ice1712_eeprom ; 
 struct snd_kcontrol_new snd_ice1712_mixer_pro_analog_route ; 
 struct snd_kcontrol_new snd_ice1712_mixer_pro_peak ; 
 struct snd_kcontrol_new snd_ice1712_mixer_pro_spdif_route ; 
 struct snd_kcontrol_new snd_ice1712_mixer_pro_volume_rate ; 
 struct snd_kcontrol_new snd_ice1712_pro_internal_clock ; 
 struct snd_kcontrol_new snd_ice1712_pro_internal_clock_default ; 
 struct snd_kcontrol_new snd_ice1712_pro_rate_locking ; 
 struct snd_kcontrol_new snd_ice1712_pro_rate_reset ; 

__attribute__((used)) static int FUNC2(struct snd_ice1712 *ice)
{
	int err;

	err = FUNC0(ice->card, FUNC1(&snd_ice1712_eeprom, ice));
	if (err < 0)
		return err;
	err = FUNC0(ice->card, FUNC1(&snd_ice1712_pro_internal_clock, ice));
	if (err < 0)
		return err;
	err = FUNC0(ice->card, FUNC1(&snd_ice1712_pro_internal_clock_default, ice));
	if (err < 0)
		return err;

	err = FUNC0(ice->card, FUNC1(&snd_ice1712_pro_rate_locking, ice));
	if (err < 0)
		return err;
	err = FUNC0(ice->card, FUNC1(&snd_ice1712_pro_rate_reset, ice));
	if (err < 0)
		return err;

	if (ice->num_total_dacs > 0) {
		struct snd_kcontrol_new tmp = snd_ice1712_mixer_pro_analog_route;
		tmp.count = ice->num_total_dacs;
		err = FUNC0(ice->card, FUNC1(&tmp, ice));
		if (err < 0)
			return err;
	}

	err = FUNC0(ice->card, FUNC1(&snd_ice1712_mixer_pro_spdif_route, ice));
	if (err < 0)
		return err;

	err = FUNC0(ice->card, FUNC1(&snd_ice1712_mixer_pro_volume_rate, ice));
	if (err < 0)
		return err;
	return FUNC0(ice->card,
			   FUNC1(&snd_ice1712_mixer_pro_peak, ice));
}