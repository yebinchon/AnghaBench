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
typedef  int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ensoniq {unsigned int spdif_default; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * playback2_substream; int /*<<< orphan*/ * playback1_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 struct ensoniq* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
                                         struct snd_ctl_elem_value *ucontrol)
{
	struct ensoniq *ensoniq = FUNC2(kcontrol);
	unsigned int val;
	int change;

	val = ((u32)ucontrol->value.iec958.status[0] << 0) |
	      ((u32)ucontrol->value.iec958.status[1] << 8) |
	      ((u32)ucontrol->value.iec958.status[2] << 16) |
	      ((u32)ucontrol->value.iec958.status[3] << 24);
	FUNC3(&ensoniq->reg_lock);
	change = ensoniq->spdif_default != val;
	ensoniq->spdif_default = val;
	if (change && ensoniq->playback1_substream == NULL &&
	    ensoniq->playback2_substream == NULL)
		FUNC1(val, FUNC0(ensoniq, CHANNEL_STATUS));
	FUNC4(&ensoniq->reg_lock);
	return change;
}