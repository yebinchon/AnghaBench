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
struct TYPE_4__ {unsigned int cs8403_stream_bits; } ;
struct snd_ice1712 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * playback_pro_substream; TYPE_2__ spdif; } ;
struct TYPE_3__ {int /*<<< orphan*/  iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_ice1712 *ice, struct snd_ctl_elem_value *ucontrol)
{
	unsigned int val;
	int change;

	val = FUNC0(&ucontrol->value.iec958);
	FUNC2(&ice->reg_lock);
	change = ice->spdif.cs8403_stream_bits != val;
	ice->spdif.cs8403_stream_bits = val;
	if (change && ice->playback_pro_substream != NULL) {
		FUNC3(&ice->reg_lock);
		FUNC1(ice, val);
	} else {
		FUNC3(&ice->reg_lock);
	}
	return change;
}