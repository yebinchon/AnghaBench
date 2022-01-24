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
struct snd_mixart {TYPE_1__* mgr; int /*<<< orphan*/ * analog_playback_active; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * value; } ;
struct TYPE_5__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_4__ {int /*<<< orphan*/  mixer_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_mixart* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_mixart *chip = FUNC2(kcontrol);

	FUNC0(&chip->mgr->mixer_mutex);
	ucontrol->value.integer.value[0] = chip->analog_playback_active[0];
	ucontrol->value.integer.value[1] = chip->analog_playback_active[1];
	FUNC1(&chip->mgr->mixer_mutex);
	return 0;
}