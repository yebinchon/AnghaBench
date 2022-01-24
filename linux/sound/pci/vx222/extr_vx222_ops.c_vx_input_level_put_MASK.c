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
struct vx_core {int /*<<< orphan*/  mixer_mutex; } ;
struct snd_vx222 {scalar_t__* input_level; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MIC_LEVEL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vx_core* FUNC2 (struct snd_kcontrol*) ; 
 struct snd_vx222* FUNC3 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_vx222*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct vx_core *_chip = FUNC2(kcontrol);
	struct snd_vx222 *chip = FUNC3(_chip);
	if (ucontrol->value.integer.value[0] < 0 ||
	    ucontrol->value.integer.value[0] > MIC_LEVEL_MAX)
		return -EINVAL;
	if (ucontrol->value.integer.value[1] < 0 ||
	    ucontrol->value.integer.value[1] > MIC_LEVEL_MAX)
		return -EINVAL;
	FUNC0(&_chip->mixer_mutex);
	if (chip->input_level[0] != ucontrol->value.integer.value[0] ||
	    chip->input_level[1] != ucontrol->value.integer.value[1]) {
		chip->input_level[0] = ucontrol->value.integer.value[0];
		chip->input_level[1] = ucontrol->value.integer.value[1];
		FUNC4(chip);
		FUNC1(&_chip->mixer_mutex);
		return 1;
	}
	FUNC1(&_chip->mixer_mutex);
	return 0;
}