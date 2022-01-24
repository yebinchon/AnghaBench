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
struct vx_core {int /*<<< orphan*/  mixer_mutex; int /*<<< orphan*/ ** output_level; } ;
struct TYPE_6__ {int index; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct TYPE_4__ {int /*<<< orphan*/ * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vx_core* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct vx_core *chip = FUNC2(kcontrol);
	int codec = kcontrol->id.index;
	FUNC0(&chip->mixer_mutex);
	ucontrol->value.integer.value[0] = chip->output_level[codec][0];
	ucontrol->value.integer.value[1] = chip->output_level[codec][1];
	FUNC1(&chip->mixer_mutex);
	return 0;
}