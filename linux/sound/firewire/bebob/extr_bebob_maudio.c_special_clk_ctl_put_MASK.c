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
struct special_params {int /*<<< orphan*/  clk_lock; int /*<<< orphan*/  dig_out_fmt; int /*<<< orphan*/  dig_in_fmt; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct snd_bebob {int /*<<< orphan*/  mutex; struct special_params* maudio_special_quirk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (struct snd_bebob*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snd_bebob* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  special_clk_types ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kctl,
			       struct snd_ctl_elem_value *uval)
{
	struct snd_bebob *bebob = FUNC4(kctl);
	struct special_params *params = bebob->maudio_special_quirk;
	int err, id;

	id = uval->value.enumerated.item[0];
	if (id >= FUNC0(special_clk_types))
		return -EINVAL;

	FUNC2(&bebob->mutex);

	err = FUNC1(bebob, id,
					 params->dig_in_fmt,
					 params->dig_out_fmt,
					 params->clk_lock);
	FUNC3(&bebob->mutex);

	if (err >= 0)
		err = 1;

	return err;
}