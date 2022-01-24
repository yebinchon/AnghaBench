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
struct snd_ice1712 {int num_total_dacs; struct phase28_spec* spec; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct phase28_spec {int* master; int /*<<< orphan*/ * vol; } ;

/* Variables and functions */
 scalar_t__ WM_DAC_ATTEN ; 
 int WM_VOL_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	struct phase28_spec *spec = ice->spec;
	int change = 0, i;

	FUNC1(ice);
	for (i = 0; i < 2; i++) {
		int val = (spec->master[i] & WM_VOL_MUTE) ? 0 : 1;
		if (ucontrol->value.integer.value[i] != val) {
			int dac;
			spec->master[i] &= ~WM_VOL_MUTE;
			spec->master[i] |=
				ucontrol->value.integer.value[i] ? 0 :
				WM_VOL_MUTE;
			for (dac = 0; dac < ice->num_total_dacs; dac += 2)
				FUNC3(ice, WM_DAC_ATTEN + dac + i,
						spec->vol[dac + i],
						spec->master[i]);
			change = 1;
		}
	}
	FUNC0(ice);

	return change;
}