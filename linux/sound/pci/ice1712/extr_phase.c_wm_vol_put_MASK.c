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
struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {struct phase28_spec* spec; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct phase28_spec {unsigned int* vol; int /*<<< orphan*/ * master; } ;

/* Variables and functions */
 int WM_DAC_ATTEN ; 
 unsigned int WM_VOL_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
			struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	struct phase28_spec *spec = ice->spec;
	int i, idx, ofs, voices;
	int change = 0;

	voices = kcontrol->private_value >> 8;
	ofs = kcontrol->private_value & 0xff;
	FUNC1(ice);
	for (i = 0; i < voices; i++) {
		unsigned int vol;
		vol = ucontrol->value.integer.value[i];
		if (vol > 0x7f)
			continue;
		vol |= spec->vol[ofs+i] & WM_VOL_MUTE;
		if (vol != spec->vol[ofs+i]) {
			spec->vol[ofs+i] = vol;
			idx  = WM_DAC_ATTEN + ofs + i;
			FUNC3(ice, idx, spec->vol[ofs+i],
				   spec->master[i]);
			change = 1;
		}
	}
	FUNC0(ice);
	return change;
}