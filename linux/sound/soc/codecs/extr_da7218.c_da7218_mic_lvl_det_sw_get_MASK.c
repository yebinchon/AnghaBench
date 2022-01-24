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
struct soc_mixer_control {unsigned int shift; unsigned int rshift; unsigned int max; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct da7218_priv {unsigned int mic_lvl_det_en; } ;

/* Variables and functions */
 struct da7218_priv* FUNC0 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC1(kcontrol);
	struct da7218_priv *da7218 = FUNC0(component);
	struct soc_mixer_control *mixer_ctrl =
		(struct soc_mixer_control *) kcontrol->private_value;
	unsigned int lshift = mixer_ctrl->shift;
	unsigned int rshift = mixer_ctrl->rshift;
	unsigned int lmask = (mixer_ctrl->max << lshift);
	unsigned int rmask = (mixer_ctrl->max << rshift);

	ucontrol->value.integer.value[0] =
		(da7218->mic_lvl_det_en & lmask) >> lshift;
	ucontrol->value.integer.value[1] =
		(da7218->mic_lvl_det_en & rmask) >> rshift;

	return 0;
}