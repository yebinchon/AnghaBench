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
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int STAC946X_MIC_L_VOLUME ; 
 int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC1 (struct snd_kcontrol*) ; 
 unsigned char FUNC2 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int,unsigned char) ; 
 unsigned char FUNC4 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,int,unsigned char) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC1(kcontrol);
	unsigned char new, old;
	int i, reg, id;
	int change;

	id = FUNC0(kcontrol, &ucontrol->id);
	if (id == 0) {
		for (i = 0; i < 2; ++i) {
			reg = STAC946X_MIC_L_VOLUME + i;
			old = FUNC4(ice, reg);
			new = (~ucontrol->value.integer.value[i]<<7&0x80) |
								(old&~0x80);
			change = (new != old);
			if (change)
				FUNC5(ice, reg, new);
		}
	} else {
		for (i = 0; i < 2; ++i) {
			reg = STAC946X_MIC_L_VOLUME + i;
			old = FUNC2(ice, reg);
			new = (~ucontrol->value.integer.value[i]<<7&0x80) |
								(old&~0x80);
			change = (new != old);
			if (change)
				FUNC3(ice, reg, new);
		}
	}
	return change;
}