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
struct snd_trident_pcm_mixer {unsigned char pan; int /*<<< orphan*/ * voice; } ;
struct snd_trident {int /*<<< orphan*/  reg_lock; struct snd_trident_pcm_mixer* pcm_mixer; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 size_t FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_trident* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_trident*,int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
					   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_trident *trident = FUNC1(kcontrol);
	struct snd_trident_pcm_mixer *mix = &trident->pcm_mixer[FUNC0(kcontrol, &ucontrol->id)];
	unsigned char val;
	int change = 0;

	if (ucontrol->value.integer.value[0] & 0x40)
		val = ucontrol->value.integer.value[0] & 0x3f;
	else
		val = (0x3f - (ucontrol->value.integer.value[0] & 0x3f)) | 0x40;
	FUNC3(&trident->reg_lock);
	change = val != mix->pan;
	mix->pan = val;
	if (mix->voice != NULL)
		FUNC2(trident, mix->voice, val);
	FUNC4(&trident->reg_lock);
	return change;
}