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
struct xonar_pcm179x {int hp_gain_offset; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  mutex; struct xonar_pcm179x* model_data; } ;
typedef  int s8 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *ctl,
				   struct snd_ctl_elem_value *value)
{
	static const s8 offsets[] = { 2*-18, 2*-12, 2*-6, 0 };
	struct oxygen *chip = ctl->private_data;
	struct xonar_pcm179x *data = chip->model_data;
	s8 offset;
	int changed;

	if (value->value.enumerated.item[0] > 3)
		return -EINVAL;
	offset = offsets[value->value.enumerated.item[0]];
	FUNC0(&chip->mutex);
	changed = offset != data->hp_gain_offset;
	if (changed) {
		data->hp_gain_offset = offset;
		FUNC2(chip);
	}
	FUNC1(&chip->mutex);
	return changed;
}