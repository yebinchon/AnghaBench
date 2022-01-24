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
typedef  int u8 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct hda_beep* beep; } ;
struct hda_beep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct hda_codec* FUNC4 (struct snd_kcontrol*) ; 

int FUNC5(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC4(kcontrol);
	struct hda_beep *beep = codec->beep;
	if (beep) {
		u8 chs = FUNC1(kcontrol);
		int enable = 0;
		long *valp = ucontrol->value.integer.value;
		if (chs & 1) {
			enable |= *valp;
			valp++;
		}
		if (chs & 2)
			enable |= *valp;
		FUNC2(codec, enable);
	}
	if (!FUNC0(kcontrol))
		return 0;
	return FUNC3(kcontrol, ucontrol);
}