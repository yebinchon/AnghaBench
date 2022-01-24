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
struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int num_total_dacs; struct aureon_spec* spec; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct aureon_spec {unsigned int* master; int /*<<< orphan*/ * vol; } ;

/* Variables and functions */
 scalar_t__ WM_DAC_ATTEN ; 
 unsigned int WM_VOL_MAX ; 
 unsigned int WM_VOL_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	struct aureon_spec *spec = ice->spec;
	int ch, change = 0;

	FUNC1(ice);
	for (ch = 0; ch < 2; ch++) {
		unsigned int vol = ucontrol->value.integer.value[ch];
		if (vol > WM_VOL_MAX)
			vol = WM_VOL_MAX;
		vol |= spec->master[ch] & WM_VOL_MUTE;
		if (vol != spec->master[ch]) {
			int dac;
			spec->master[ch] = vol;
			for (dac = 0; dac < ice->num_total_dacs; dac += 2)
				FUNC3(ice, WM_DAC_ATTEN + dac + ch,
					   spec->vol[dac + ch],
					   spec->master[ch]);
			change = 1;
		}
	}
	FUNC0(ice);
	return change;
}