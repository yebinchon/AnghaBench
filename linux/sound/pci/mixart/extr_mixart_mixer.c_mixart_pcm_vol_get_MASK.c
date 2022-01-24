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
 int MIXART_PLAYBACK_STREAMS ; 
 int MIXART_VOL_AES_MASK ; 
 int MIXART_VOL_REC_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_mixart* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_mixart *chip = FUNC4(kcontrol);
	int idx = FUNC3(kcontrol, &ucontrol->id); /* index */
	int *stored_volume;
	int is_capture = kcontrol->private_value & MIXART_VOL_REC_MASK;
	int is_aes = kcontrol->private_value & MIXART_VOL_AES_MASK;
	FUNC0(&chip->mgr->mixer_mutex);
	if(is_capture) {
		if(is_aes)	stored_volume = chip->digital_capture_volume[1];	/* AES capture */
		else		stored_volume = chip->digital_capture_volume[0];	/* analog capture */
	} else {
		FUNC2(idx >= MIXART_PLAYBACK_STREAMS);
		if(is_aes)	stored_volume = chip->digital_playback_volume[MIXART_PLAYBACK_STREAMS + idx]; /* AES playback */
		else		stored_volume = chip->digital_playback_volume[idx];	/* analog playback */
	}
	ucontrol->value.integer.value[0] = stored_volume[0];
	ucontrol->value.integer.value[1] = stored_volume[1];
	FUNC1(&chip->mgr->mixer_mutex);
	return 0;
}