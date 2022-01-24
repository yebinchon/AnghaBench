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
struct snd_mixart {int** digital_playback_active; TYPE_3__* mgr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  mixer_mutex; } ;

/* Variables and functions */
 int MIXART_PLAYBACK_STREAMS ; 
 int MIXART_VOL_AES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_mixart*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_mixart* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_mixart *chip = FUNC5(kcontrol);
	int changed = 0;
	int is_aes = kcontrol->private_value & MIXART_VOL_AES_MASK;
	int idx = FUNC4(kcontrol, &ucontrol->id); /* index */
	int i, j;
	FUNC3(idx >= MIXART_PLAYBACK_STREAMS);
	FUNC1(&chip->mgr->mixer_mutex);
	j = idx;
	if (is_aes)
		j += MIXART_PLAYBACK_STREAMS;
	for (i = 0; i < 2; i++) {
		if (chip->digital_playback_active[j][i] !=
		    ucontrol->value.integer.value[i]) {
			chip->digital_playback_active[j][i] =
				!!ucontrol->value.integer.value[i];
			changed = 1;
		}
	}
	if (changed)
		FUNC0(chip, is_aes, idx);
	FUNC2(&chip->mgr->mixer_mutex);
	return changed;
}