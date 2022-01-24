#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_card {struct snd_soc_dapm_context dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned short* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 unsigned short AMS_DELTA_AGC ; 
 unsigned short AMS_DELTA_EARPIECE ; 
 unsigned short AMS_DELTA_MICROPHONE ; 
 unsigned short AMS_DELTA_MOUTHPIECE ; 
 unsigned short AMS_DELTA_SPEAKER ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 unsigned short ams_delta_audio_agc ; 
 int /*<<< orphan*/  ams_delta_audio_mode ; 
 unsigned short* ams_delta_audio_mode_pins ; 
 struct snd_soc_card* FUNC1 (struct snd_kcontrol*) ; 
 unsigned short FUNC2 (struct snd_soc_dapm_context*,char*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_card *card = FUNC1(kcontrol);
	struct snd_soc_dapm_context *dapm = &card->dapm;
	unsigned short pins, mode;

	pins = ((FUNC2(dapm, "Mouthpiece") <<
							AMS_DELTA_MOUTHPIECE) |
			(FUNC2(dapm, "Earpiece") <<
							AMS_DELTA_EARPIECE));
	if (pins)
		pins |= (FUNC2(dapm, "Microphone") <<
							AMS_DELTA_MICROPHONE);
	else
		pins = ((FUNC2(dapm, "Microphone") <<
							AMS_DELTA_MICROPHONE) |
			(FUNC2(dapm, "Speaker") <<
							AMS_DELTA_SPEAKER) |
			(ams_delta_audio_agc << AMS_DELTA_AGC));

	for (mode = 0; mode < FUNC0(ams_delta_audio_mode); mode++)
		if (pins == ams_delta_audio_mode_pins[mode])
			break;

	if (mode >= FUNC0(ams_delta_audio_mode))
		return -EINVAL;

	ucontrol->value.enumerated.item[0] = mode;

	return 0;
}