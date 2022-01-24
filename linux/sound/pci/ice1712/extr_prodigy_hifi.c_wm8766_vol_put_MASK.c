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
struct snd_ice1712 {int /*<<< orphan*/  gpio_mutex; struct prodigy_hifi_spec* spec; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct prodigy_hifi_spec {int /*<<< orphan*/ * master; int /*<<< orphan*/ * vol; } ;

/* Variables and functions */
 int WM8766_LDA1 ; 
 int /*<<< orphan*/  WM_VOL_MUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	struct prodigy_hifi_spec *spec = ice->spec;
	int i, idx, ofs, voices;
	int change = 0;

	voices = kcontrol->private_value >> 8;
	ofs = kcontrol->private_value & 0xff;
	FUNC0(&ice->gpio_mutex);
	for (i = 0; i < voices; i++) {
		if (ucontrol->value.integer.value[i] != spec->vol[ofs + i]) {
			idx = WM8766_LDA1 + ofs + i;
			spec->vol[ofs + i] &= WM_VOL_MUTE;
			spec->vol[ofs + i] |= ucontrol->value.integer.value[i];
			FUNC3(ice, idx,
				       spec->vol[ofs + i], spec->master[i]);
			change = 1;
		}
	}
	FUNC1(&ice->gpio_mutex);
	return change;
}