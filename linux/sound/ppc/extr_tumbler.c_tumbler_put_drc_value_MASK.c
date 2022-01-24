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
struct snd_pmac {scalar_t__ model; struct pmac_tumbler* mixer_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pmac_tumbler {unsigned int drc_range; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ PMAC_TUMBLER ; 
 unsigned int TAS3001_DRC_MAX ; 
 unsigned int TAS3004_DRC_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct pmac_tumbler*) ; 
 struct snd_pmac* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct pmac_tumbler*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_pmac *chip = FUNC1(kcontrol);
	struct pmac_tumbler *mix;
	unsigned int val;
	int change;

	if (! (mix = chip->mixer_data))
		return -ENODEV;
	val = ucontrol->value.integer.value[0];
	if (chip->model == PMAC_TUMBLER) {
		if (val > TAS3001_DRC_MAX)
			return -EINVAL;
	} else {
		if (val > TAS3004_DRC_MAX)
			return -EINVAL;
	}
	change = mix->drc_range != val;
	if (change) {
		mix->drc_range = val;
		if (chip->model == PMAC_TUMBLER)
			FUNC2(mix);
		else
			FUNC0(mix);
	}
	return change;
}