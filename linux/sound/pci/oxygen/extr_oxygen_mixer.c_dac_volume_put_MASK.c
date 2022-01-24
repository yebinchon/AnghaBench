#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {unsigned int dac_channels_mixer; int /*<<< orphan*/  (* update_dac_volume ) (struct oxygen*) ;} ;
struct oxygen {scalar_t__* dac_volume; int /*<<< orphan*/  mutex; TYPE_3__ model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *ctl,
			  struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	unsigned int i;
	int changed;

	changed = 0;
	FUNC0(&chip->mutex);
	for (i = 0; i < chip->model.dac_channels_mixer; ++i)
		if (value->value.integer.value[i] != chip->dac_volume[i]) {
			chip->dac_volume[i] = value->value.integer.value[i];
			changed = 1;
		}
	if (changed)
		chip->model.update_dac_volume(chip);
	FUNC1(&chip->mutex);
	return changed;
}