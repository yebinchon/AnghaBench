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
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1_pcm_mixer {int* attn; TYPE_4__* epcm; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; struct snd_emu10k1_pcm_mixer* efx_pcm_mixer; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_3__** voices; } ;
struct TYPE_7__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  VTFT_VOLUMETARGET ; 
 int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_emu10k1* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	unsigned long flags;
	struct snd_emu10k1 *emu = FUNC2(kcontrol);
	int ch = FUNC0(kcontrol, &ucontrol->id);
	struct snd_emu10k1_pcm_mixer *mix = &emu->efx_pcm_mixer[ch];
	int change = 0, val;

	FUNC3(&emu->reg_lock, flags);
	val = ucontrol->value.integer.value[0] & 0xffff;
	if (mix->attn[0] != val) {
		mix->attn[0] = val;
		change = 1;
	}
	if (change && mix->epcm) {
		if (mix->epcm->voices[ch]) {
			FUNC1(emu, VTFT_VOLUMETARGET, mix->epcm->voices[ch]->number, mix->attn[0]);
		}
	}
	FUNC4(&emu->reg_lock, flags);
	return change;
}