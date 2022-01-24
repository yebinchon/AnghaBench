#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_kcontrol_volatile {int access; } ;
struct snd_kcontrol {struct snd_kcontrol_volatile* vd; } ;
struct snd_ctl_elem_id {int dummy; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;

/* Variables and functions */
 int ENOENT ; 
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ctl_elem_id*,struct snd_kcontrol*,unsigned int) ; 
 struct snd_kcontrol* FUNC2 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 unsigned int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*,int /*<<< orphan*/ ,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct snd_card *card, struct snd_ctl_elem_id *id,
			int active)
{
	struct snd_kcontrol *kctl;
	struct snd_kcontrol_volatile *vd;
	unsigned int index_offset;
	int ret;

	FUNC0(&card->controls_rwsem);
	kctl = FUNC2(card, id);
	if (kctl == NULL) {
		ret = -ENOENT;
		goto unlock;
	}
	index_offset = FUNC3(kctl, id);
	vd = &kctl->vd[index_offset];
	ret = 0;
	if (active) {
		if (!(vd->access & SNDRV_CTL_ELEM_ACCESS_INACTIVE))
			goto unlock;
		vd->access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	} else {
		if (vd->access & SNDRV_CTL_ELEM_ACCESS_INACTIVE)
			goto unlock;
		vd->access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	}
	FUNC1(id, kctl, index_offset);
	ret = 1;
 unlock:
	FUNC5(&card->controls_rwsem);
	if (ret > 0)
		FUNC4(card, SNDRV_CTL_EVENT_MASK_INFO, id);
	return ret;
}