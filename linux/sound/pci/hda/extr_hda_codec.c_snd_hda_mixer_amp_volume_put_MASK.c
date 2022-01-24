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
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_kcontrol*) ; 
 unsigned int FUNC4 (struct snd_kcontrol*) ; 
 struct hda_codec* FUNC5 (struct snd_kcontrol*) ; 
 int FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int,int,int,unsigned int,long) ; 

int FUNC7(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC5(kcontrol);
	hda_nid_t nid = FUNC3(kcontrol);
	int chs = FUNC0(kcontrol);
	int dir = FUNC1(kcontrol);
	int idx = FUNC2(kcontrol);
	unsigned int ofs = FUNC4(kcontrol);
	long *valp = ucontrol->value.integer.value;
	int change = 0;

	if (chs & 1) {
		change = FUNC6(codec, nid, 0, dir, idx, ofs, *valp);
		valp++;
	}
	if (chs & 2)
		change |= FUNC6(codec, nid, 1, dir, idx, ofs, *valp);
	return change;
}