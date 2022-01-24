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
struct wtm_spec {int /*<<< orphan*/  mute_mutex; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ice1712 {struct wtm_spec* spec; } ;
struct TYPE_3__ {unsigned char* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int STAC946X_LF_VOLUME ; 
 int STAC946X_MASTER_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC3 (struct snd_kcontrol*) ; 
 unsigned char FUNC4 (struct snd_ice1712*,int) ; 
 unsigned char FUNC5 (struct snd_ice1712*,int) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC3(kcontrol);
	struct wtm_spec *spec = ice->spec;
	unsigned char val;
	int idx, id;

	FUNC0(&spec->mute_mutex);

	if (kcontrol->private_value) {
		idx = STAC946X_MASTER_VOLUME;
		id = 0;
	} else {
		id = FUNC2(kcontrol, &ucontrol->id);
		idx = id + STAC946X_LF_VOLUME;
	}
	if (id < 6)
		val = FUNC5(ice, idx);
	else
		val = FUNC4(ice, idx - 6);
	ucontrol->value.integer.value[0] = (~val >> 7) & 0x1;

	FUNC1(&spec->mute_mutex);
	return 0;
}