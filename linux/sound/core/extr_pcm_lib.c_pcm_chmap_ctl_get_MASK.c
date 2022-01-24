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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_chmap_elem {int channels; int /*<<< orphan*/ * map; } ;
struct snd_pcm_chmap {struct snd_pcm_chmap_elem* chmap; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int channels; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_pcm_chmap* FUNC2 (struct snd_kcontrol*) ; 
 struct snd_pcm_substream* FUNC3 (struct snd_pcm_chmap*,unsigned int) ; 
 scalar_t__ FUNC4 (struct snd_pcm_chmap*,int) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_pcm_chmap *info = FUNC2(kcontrol);
	unsigned int idx = FUNC1(kcontrol, &ucontrol->id);
	struct snd_pcm_substream *substream;
	const struct snd_pcm_chmap_elem *map;

	if (!info->chmap)
		return -EINVAL;
	substream = FUNC3(info, idx);
	if (!substream)
		return -ENODEV;
	FUNC0(ucontrol->value.integer.value, 0,
	       sizeof(ucontrol->value.integer.value));
	if (!substream->runtime)
		return 0; /* no channels set */
	for (map = info->chmap; map->channels; map++) {
		int i;
		if (map->channels == substream->runtime->channels &&
		    FUNC4(info, map->channels)) {
			for (i = 0; i < map->channels; i++)
				ucontrol->value.integer.value[i] = map->map[i];
			return 0;
		}
	}
	return -EINVAL;
}