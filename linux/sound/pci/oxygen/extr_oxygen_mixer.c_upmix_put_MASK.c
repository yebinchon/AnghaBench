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
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {unsigned int dac_routing; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 
 unsigned int FUNC3 (struct oxygen*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *ctl, struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	unsigned int count = FUNC3(chip);
	int changed;

	if (value->value.enumerated.item[0] >= count)
		return -EINVAL;
	FUNC0(&chip->mutex);
	changed = value->value.enumerated.item[0] != chip->dac_routing;
	if (changed) {
		chip->dac_routing = value->value.enumerated.item[0];
		FUNC2(chip);
	}
	FUNC1(&chip->mutex);
	return changed;
}