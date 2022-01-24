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
struct snd_mixer_oss_slot {int dummy; } ;
struct snd_mixer_oss_file {struct snd_card* card; } ;
struct snd_kcontrol {int (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;int /*<<< orphan*/  id; scalar_t__ (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {int count; TYPE_2__ value; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int ID_UNKNOWN ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ctl_elem_value*) ; 
 struct snd_ctl_elem_value* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct snd_kcontrol* FUNC3 (struct snd_card*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int FUNC6 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct snd_mixer_oss_file *fmixer,
					 struct snd_mixer_oss_slot *pslot,
					 unsigned int numid,
					 int left, int right,
					 int route)
{
	struct snd_ctl_elem_info *uinfo;
	struct snd_ctl_elem_value *uctl;
	struct snd_kcontrol *kctl;
	struct snd_card *card = fmixer->card;
	int res;

	if (numid == ID_UNKNOWN)
		return;
	FUNC0(&card->controls_rwsem);
	if ((kctl = FUNC3(card, numid)) == NULL) {
		FUNC7(&card->controls_rwsem);
		return;
	}
	uinfo = FUNC2(sizeof(*uinfo), GFP_KERNEL);
	uctl = FUNC2(sizeof(*uctl), GFP_KERNEL);
	if (uinfo == NULL || uctl == NULL)
		goto __unalloc;
	if (kctl->info(kctl, uinfo))
		goto __unalloc;
	if (uinfo->count > 1) {
		uctl->value.integer.value[0] = left > 0 ? 1 : 0;
		uctl->value.integer.value[route ? 3 : 1] = right > 0 ? 1 : 0;
		if (route) {
			uctl->value.integer.value[1] =
			uctl->value.integer.value[2] = 0;
		}
	} else {
		uctl->value.integer.value[0] = (left > 0 || right > 0) ? 1 : 0;
	}
	if ((res = kctl->put(kctl, uctl)) < 0)
		goto __unalloc;
	if (res > 0)
		FUNC4(card, SNDRV_CTL_EVENT_MASK_VALUE, &kctl->id);
      __unalloc:
	FUNC7(&card->controls_rwsem);
      	FUNC1(uctl);
	FUNC1(uinfo);
}