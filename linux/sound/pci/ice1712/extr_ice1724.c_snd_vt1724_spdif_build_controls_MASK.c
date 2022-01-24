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
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_6__ {struct snd_kcontrol* stream_ctl; } ;
struct snd_ice1712 {TYPE_3__ spdif; TYPE_2__* pcm; int /*<<< orphan*/  card; int /*<<< orphan*/  own_routing; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC2 (int /*<<< orphan*/ *,struct snd_ice1712*) ; 
 int /*<<< orphan*/  snd_vt1724_mixer_pro_spdif_route ; 
 int /*<<< orphan*/  snd_vt1724_spdif_default ; 
 int /*<<< orphan*/  snd_vt1724_spdif_maskc ; 
 int /*<<< orphan*/  snd_vt1724_spdif_maskp ; 
 int /*<<< orphan*/  snd_vt1724_spdif_stream ; 
 int /*<<< orphan*/  snd_vt1724_spdif_switch ; 

__attribute__((used)) static int FUNC3(struct snd_ice1712 *ice)
{
	int err;
	struct snd_kcontrol *kctl;

	if (FUNC0(!ice->pcm))
		return -EIO;

	if (!ice->own_routing) {
		err = FUNC1(ice->card,
			FUNC2(&snd_vt1724_mixer_pro_spdif_route, ice));
		if (err < 0)
			return err;
	}

	err = FUNC1(ice->card, FUNC2(&snd_vt1724_spdif_switch, ice));
	if (err < 0)
		return err;

	err = FUNC1(ice->card, kctl = FUNC2(&snd_vt1724_spdif_default, ice));
	if (err < 0)
		return err;
	kctl->id.device = ice->pcm->device;
	err = FUNC1(ice->card, kctl = FUNC2(&snd_vt1724_spdif_maskc, ice));
	if (err < 0)
		return err;
	kctl->id.device = ice->pcm->device;
	err = FUNC1(ice->card, kctl = FUNC2(&snd_vt1724_spdif_maskp, ice));
	if (err < 0)
		return err;
	kctl->id.device = ice->pcm->device;
#if 0 /* use default only */
	err = snd_ctl_add(ice->card, kctl = snd_ctl_new1(&snd_vt1724_spdif_stream, ice));
	if (err < 0)
		return err;
	kctl->id.device = ice->pcm->device;
	ice->spdif.stream_ctl = kctl;
#endif
	return 0;
}