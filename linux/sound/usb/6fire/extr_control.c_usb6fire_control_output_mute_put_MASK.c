#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_7__ {scalar_t__* value; } ;
struct TYPE_8__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct control_runtime {int output_mute; TYPE_2__* chip; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct control_runtime* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct control_runtime*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct control_runtime *rt = FUNC1(kcontrol);
	unsigned int ch = kcontrol->private_value;
	u8 old = rt->output_mute;
	u8 value = 0;

	if (ch > 4) {
		FUNC0(&rt->chip->dev->dev,
			"Invalid channel in volume control.");
		return -EINVAL;
	}

	rt->output_mute &= ~(3 << ch);
	if (ucontrol->value.integer.value[0])
		value |= 1;
	if (ucontrol->value.integer.value[1])
		value |= 2;
	rt->output_mute |= value << ch;

	if (rt->output_mute != old)
		FUNC2(rt);

	return rt->output_mute != old;
}