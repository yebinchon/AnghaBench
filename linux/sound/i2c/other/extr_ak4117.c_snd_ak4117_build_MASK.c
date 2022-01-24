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
struct snd_pcm_substream {int /*<<< orphan*/  number; TYPE_1__* pcm; } ;
struct TYPE_4__ {int /*<<< orphan*/  subdevice; int /*<<< orphan*/  device; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct ak4117 {struct snd_kcontrol** kctls; int /*<<< orphan*/  card; struct snd_pcm_substream* substream; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 unsigned int AK4117_CONTROLS ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * snd_ak4117_iec958_controls ; 
 int FUNC1 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC2 (int /*<<< orphan*/ *,struct ak4117*) ; 

int FUNC3(struct ak4117 *ak4117, struct snd_pcm_substream *cap_substream)
{
	struct snd_kcontrol *kctl;
	unsigned int idx;
	int err;

	if (FUNC0(!cap_substream))
		return -EINVAL;
	ak4117->substream = cap_substream;
	for (idx = 0; idx < AK4117_CONTROLS; idx++) {
		kctl = FUNC2(&snd_ak4117_iec958_controls[idx], ak4117);
		if (kctl == NULL)
			return -ENOMEM;
		kctl->id.device = cap_substream->pcm->device;
		kctl->id.subdevice = cap_substream->number;
		err = FUNC1(ak4117->card, kctl);
		if (err < 0)
			return err;
		ak4117->kctls[idx] = kctl;
	}
	return 0;
}