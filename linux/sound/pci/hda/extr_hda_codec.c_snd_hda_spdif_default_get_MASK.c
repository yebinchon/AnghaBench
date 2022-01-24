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
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* status; } ;
struct TYPE_5__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_spdif_out {int status; } ;
struct TYPE_6__ {int used; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; TYPE_3__ spdif_out; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hda_spdif_out* FUNC3 (TYPE_3__*,int) ; 
 struct hda_codec* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				     struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC4(kcontrol);
	int idx = kcontrol->private_value;
	struct hda_spdif_out *spdif;

	if (FUNC0(codec->spdif_out.used <= idx))
		return -EINVAL;
	FUNC1(&codec->spdif_mutex);
	spdif = FUNC3(&codec->spdif_out, idx);
	ucontrol->value.iec958.status[0] = spdif->status & 0xff;
	ucontrol->value.iec958.status[1] = (spdif->status >> 8) & 0xff;
	ucontrol->value.iec958.status[2] = (spdif->status >> 16) & 0xff;
	ucontrol->value.iec958.status[3] = (spdif->status >> 24) & 0xff;
	FUNC2(&codec->spdif_mutex);

	return 0;
}