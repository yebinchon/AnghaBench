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
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  mutex; struct dg* model_data; } ;
struct dg {int* cs4245_shadow; } ;

/* Variables and functions */
 size_t CS4245_DAC_CTRL_1 ; 
 int CS4245_MUTE_DAC ; 
 int EINVAL ; 
 int FUNC0 (struct oxygen*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *ctl,
			struct snd_ctl_elem_value *val)
{
	struct oxygen *chip = ctl->private_data;
	struct dg *data = chip->model_data;
	int ret;
	int changed;

	if (val->value.integer.value[0] > 1)
		return -EINVAL;
	FUNC1(&chip->mutex);
	data->cs4245_shadow[CS4245_DAC_CTRL_1] &= ~CS4245_MUTE_DAC;
	data->cs4245_shadow[CS4245_DAC_CTRL_1] |=
		(~val->value.integer.value[0] << 2) & CS4245_MUTE_DAC;
	ret = FUNC0(chip, CS4245_DAC_CTRL_1);
	changed = ret >= 0 ? 1 : ret;
	FUNC2(&chip->mutex);
	return changed;
}