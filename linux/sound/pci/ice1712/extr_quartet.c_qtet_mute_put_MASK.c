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
struct snd_ice1712 {struct snd_akm4xxx* akm; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_akm4xxx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4620_DEEMVOL_REG ; 
 unsigned int AK4620_SMUTE ; 
 unsigned int SCR_MUTE ; 
 unsigned int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_akm4xxx*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,unsigned int) ; 
 struct snd_ice1712* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
		struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC3(kcontrol);
	unsigned int old, new, smute;
	old = FUNC0(ice) & SCR_MUTE;
	if (ucontrol->value.integer.value[0]) {
		/* unmute */
		new = 0;
		/* un-smuting DAC */
		smute = 0;
	} else {
		/* mute */
		new = SCR_MUTE;
		/* smuting DAC */
		smute = AK4620_SMUTE;
	}
	if (old != new) {
		struct snd_akm4xxx *ak = ice->akm;
		FUNC2(ice, (FUNC0(ice) & ~SCR_MUTE) | new);
		/* set smute */
		FUNC1(ak, AK4620_DEEMVOL_REG, AK4620_SMUTE, smute);
		return 1;
	}
	/* no change */
	return 0;
}