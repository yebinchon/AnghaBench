#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct TYPE_4__ {int /*<<< orphan*/  max; scalar_t__ min; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int /*<<< orphan*/  type; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_TYPE_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_kcontrol*) ; 
 unsigned int FUNC5 (struct snd_kcontrol*) ; 
 struct hda_codec* FUNC6 (struct snd_kcontrol*) ; 

int FUNC7(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_info *uinfo)
{
	struct hda_codec *codec = FUNC6(kcontrol);
	u16 nid = FUNC4(kcontrol);
	u8 chs = FUNC1(kcontrol);
	int dir = FUNC2(kcontrol);
	unsigned int ofs = FUNC5(kcontrol);

	uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
	uinfo->count = chs == 3 ? 2 : 1;
	uinfo->value.integer.min = 0;
	uinfo->value.integer.max = FUNC3(codec, nid, dir, ofs);
	if (!uinfo->value.integer.max) {
		FUNC0(codec,
			   "num_steps = 0 for NID=0x%x (ctl = %s)\n",
			   nid, kcontrol->id.name);
		return -EINVAL;
	}
	return 0;
}