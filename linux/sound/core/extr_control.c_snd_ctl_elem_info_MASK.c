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
struct snd_kcontrol_volatile {struct snd_ctl_file* owner; int /*<<< orphan*/  access; } ;
struct snd_kcontrol {int (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;struct snd_kcontrol_volatile* vd; } ;
struct snd_ctl_file {int /*<<< orphan*/  pid; struct snd_card* card; } ;
struct snd_ctl_elem_info {int owner; int /*<<< orphan*/  access; int /*<<< orphan*/  id; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_LOCK ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_kcontrol*,unsigned int) ; 
 struct snd_kcontrol* FUNC4 (struct snd_card*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_kcontrol*,struct snd_ctl_elem_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_ctl_file *ctl,
			     struct snd_ctl_elem_info *info)
{
	struct snd_card *card = ctl->card;
	struct snd_kcontrol *kctl;
	struct snd_kcontrol_volatile *vd;
	unsigned int index_offset;
	int result;

	FUNC0(&card->controls_rwsem);
	kctl = FUNC4(card, &info->id);
	if (kctl == NULL) {
		FUNC7(&card->controls_rwsem);
		return -ENOENT;
	}
#ifdef CONFIG_SND_DEBUG
	info->access = 0;
#endif
	result = kctl->info(kctl, info);
	if (result >= 0) {
		FUNC2(info->access);
		index_offset = FUNC5(kctl, &info->id);
		vd = &kctl->vd[index_offset];
		FUNC3(&info->id, kctl, index_offset);
		info->access = vd->access;
		if (vd->owner) {
			info->access |= SNDRV_CTL_ELEM_ACCESS_LOCK;
			if (vd->owner == ctl)
				info->access |= SNDRV_CTL_ELEM_ACCESS_OWNER;
			info->owner = FUNC1(vd->owner->pid);
		} else {
			info->owner = -1;
		}
	}
	FUNC7(&card->controls_rwsem);
	return result;
}