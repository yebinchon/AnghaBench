#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int count; TYPE_1__* vd; } ;
struct snd_ctl_file {struct snd_card* card; } ;
struct snd_ctl_elem_id {int dummy; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; int /*<<< orphan*/  user_ctl_count; } ;
struct TYPE_2__ {int access; struct snd_ctl_file* owner; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int SNDRV_CTL_ELEM_ACCESS_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct snd_kcontrol* FUNC1 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 int FUNC2 (struct snd_card*,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_ctl_file * file,
				   struct snd_ctl_elem_id *id)
{
	struct snd_card *card = file->card;
	struct snd_kcontrol *kctl;
	int idx, ret;

	FUNC0(&card->controls_rwsem);
	kctl = FUNC1(card, id);
	if (kctl == NULL) {
		ret = -ENOENT;
		goto error;
	}
	if (!(kctl->vd[0].access & SNDRV_CTL_ELEM_ACCESS_USER)) {
		ret = -EINVAL;
		goto error;
	}
	for (idx = 0; idx < kctl->count; idx++)
		if (kctl->vd[idx].owner != NULL && kctl->vd[idx].owner != file) {
			ret = -EBUSY;
			goto error;
		}
	ret = FUNC2(card, kctl);
	if (ret < 0)
		goto error;
	card->user_ctl_count--;
error:
	FUNC3(&card->controls_rwsem);
	return ret;
}