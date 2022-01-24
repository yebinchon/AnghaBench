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
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  mutex; struct dg* model_data; } ;
struct dg {size_t input_sel; int /*<<< orphan*/ ** input_vol; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct oxygen*) ; 
 int FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *ctl,
			 struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	struct dg *data = chip->model_data;
	int changed;
	int ret;

	if (value->value.enumerated.item[0] > 3)
		return -EINVAL;

	FUNC2(&chip->mutex);
	changed = value->value.enumerated.item[0] != data->input_sel;
	if (changed) {
		data->input_sel = value->value.enumerated.item[0];

		ret = FUNC0(chip);
		if (ret >= 0)
			ret = FUNC1(chip,
				data->input_vol[data->input_sel][0],
				data->input_vol[data->input_sel][1]);
		changed = ret >= 0 ? 1 : ret;
	}
	FUNC3(&chip->mutex);
	return changed;
}