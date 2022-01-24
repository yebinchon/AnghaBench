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
struct snd_pcxhr {int* monitoring_active; TYPE_3__* mgr; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int /*<<< orphan*/  mixer_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcxhr*,int /*<<< orphan*/ ,int) ; 
 struct snd_pcxhr* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_pcxhr *chip = FUNC3(kcontrol);
	int changed = 0;
	int i;

	FUNC0(&chip->mgr->mixer_mutex);
	for (i = 0; i < 2; i++) {
		if (chip->monitoring_active[i] !=
		    ucontrol->value.integer.value[i]) {
			chip->monitoring_active[i] =
				!!ucontrol->value.integer.value[i];
			changed |= (1<<i); /* mask 0x01 and 0x02 */
		}
	}
	if (changed & 0x01)
		/* update left monitoring volume and mute */
		FUNC2(chip, 0, 0);
	if (changed & 0x02)
		/* update right monitoring volume and mute */
		FUNC2(chip, 0, 1);

	FUNC1(&chip->mgr->mixer_mutex);
	return (changed != 0);
}