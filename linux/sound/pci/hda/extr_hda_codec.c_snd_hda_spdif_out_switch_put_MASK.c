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
typedef  scalar_t__ u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_spdif_out {scalar_t__ nid; unsigned short ctls; } ;
struct TYPE_6__ {int used; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; TYPE_3__ spdif_out; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 unsigned short AC_DIG1_ENABLE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,scalar_t__,unsigned short,int) ; 
 struct hda_spdif_out* FUNC4 (TYPE_3__*,int) ; 
 struct hda_codec* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC5(kcontrol);
	int idx = kcontrol->private_value;
	struct hda_spdif_out *spdif;
	hda_nid_t nid;
	unsigned short val;
	int change;

	if (FUNC0(codec->spdif_out.used <= idx))
		return -EINVAL;
	FUNC1(&codec->spdif_mutex);
	spdif = FUNC4(&codec->spdif_out, idx);
	nid = spdif->nid;
	val = spdif->ctls & ~AC_DIG1_ENABLE;
	if (ucontrol->value.integer.value[0])
		val |= AC_DIG1_ENABLE;
	change = spdif->ctls != val;
	spdif->ctls = val;
	if (change && nid != (u16)-1)
		FUNC3(codec, nid, val & 0xff, -1);
	FUNC2(&codec->spdif_mutex);
	return change;
}