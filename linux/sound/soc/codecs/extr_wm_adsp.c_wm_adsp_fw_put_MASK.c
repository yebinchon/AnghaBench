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
struct wm_adsp {scalar_t__ fw; int /*<<< orphan*/  pwr_lock; int /*<<< orphan*/  compr_list; scalar_t__ booted; } ;
struct soc_enum {size_t shift_l; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ WM_ADSP_NUM_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wm_adsp* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 

int FUNC5(struct snd_kcontrol *kcontrol,
		   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC4(kcontrol);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	struct wm_adsp *dsp = FUNC3(component);
	int ret = 0;

	if (ucontrol->value.enumerated.item[0] == dsp[e->shift_l].fw)
		return 0;

	if (ucontrol->value.enumerated.item[0] >= WM_ADSP_NUM_FW)
		return -EINVAL;

	FUNC1(&dsp[e->shift_l].pwr_lock);

	if (dsp[e->shift_l].booted || !FUNC0(&dsp[e->shift_l].compr_list))
		ret = -EBUSY;
	else
		dsp[e->shift_l].fw = ucontrol->value.enumerated.item[0];

	FUNC2(&dsp[e->shift_l].pwr_lock);

	return ret;
}