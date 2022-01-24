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
struct snd_pcm_chmap_elem {int channels; int /*<<< orphan*/ * map; } ;
struct snd_pcm_chmap {struct snd_intelhad* private_data; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_intelhad {int /*<<< orphan*/  mutex; TYPE_1__* chmap; } ;
struct TYPE_5__ {int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_4__ {struct snd_pcm_chmap_elem* chmap; } ;

/* Variables and functions */
 int HAD_MAX_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_pcm_chmap* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_pcm_chmap *info = FUNC3(kcontrol);
	struct snd_intelhad *intelhaddata = info->private_data;
	int i;
	const struct snd_pcm_chmap_elem *chmap;

	FUNC0(ucontrol->value.integer.value, 0,
	       sizeof(long) * HAD_MAX_CHANNEL);
	FUNC1(&intelhaddata->mutex);
	if (!intelhaddata->chmap->chmap) {
		FUNC2(&intelhaddata->mutex);
		return 0;
	}

	chmap = intelhaddata->chmap->chmap;
	for (i = 0; i < chmap->channels; i++)
		ucontrol->value.integer.value[i] = chmap->map[i];
	FUNC2(&intelhaddata->mutex);

	return 0;
}