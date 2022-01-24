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
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  mutex; struct dg* model_data; } ;
struct dg {long* cs4245_shadow; } ;

/* Variables and functions */
 size_t CS4245_DAC_A_CTRL ; 
 size_t CS4245_DAC_B_CTRL ; 
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
	int changed = 0;
	long new1 = val->value.integer.value[0];
	long new2 = val->value.integer.value[1];

	if ((new1 > 255) || (new1 < 0) || (new2 > 255) || (new2 < 0))
		return -EINVAL;

	FUNC1(&chip->mutex);
	if ((data->cs4245_shadow[CS4245_DAC_A_CTRL] != ~new1) ||
	    (data->cs4245_shadow[CS4245_DAC_B_CTRL] != ~new2)) {
		data->cs4245_shadow[CS4245_DAC_A_CTRL] = ~new1;
		data->cs4245_shadow[CS4245_DAC_B_CTRL] = ~new2;
		ret = FUNC0(chip, CS4245_DAC_A_CTRL);
		if (ret >= 0)
			ret = FUNC0(chip, CS4245_DAC_B_CTRL);
		changed = ret >= 0 ? 1 : ret;
	}
	FUNC2(&chip->mutex);

	return changed;
}