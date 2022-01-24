#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int /*<<< orphan*/  id; TYPE_3__* vd; int /*<<< orphan*/  (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;int /*<<< orphan*/  (* get ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;
struct TYPE_5__ {scalar_t__* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci {int mixer_insensitive; scalar_t__* mixer_res_status; int /*<<< orphan*/  card; struct snd_kcontrol** mixer_res_ctl; } ;
struct TYPE_8__ {scalar_t__ toggle_on; } ;
struct TYPE_7__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 unsigned int CM_SAVED_MIXERS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 TYPE_4__* cm_saved_mixer ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_value*) ; 
 struct snd_ctl_elem_value* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ctl_elem_value*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC6(struct cmipci *cm)
{
	if (! cm->mixer_insensitive) {
		struct snd_ctl_elem_value *val;
		unsigned int i;

		val = FUNC1(sizeof(*val), GFP_KERNEL);
		if (!val)
			return -ENOMEM;
		for (i = 0; i < CM_SAVED_MIXERS; i++) {
			struct snd_kcontrol *ctl = cm->mixer_res_ctl[i];
			if (ctl) {
				int event;
				FUNC2(val, 0, sizeof(*val));
				ctl->get(ctl, val);
				cm->mixer_res_status[i] = val->value.integer.value[0];
				val->value.integer.value[0] = cm_saved_mixer[i].toggle_on;
				event = SNDRV_CTL_EVENT_MASK_INFO;
				if (cm->mixer_res_status[i] != val->value.integer.value[0]) {
					ctl->put(ctl, val); /* toggle */
					event |= SNDRV_CTL_EVENT_MASK_VALUE;
				}
				ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
				FUNC3(cm->card, event, &ctl->id);
			}
		}
		FUNC0(val);
		cm->mixer_insensitive = 1;
	}
	return 0;
}