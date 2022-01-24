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
struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int /*<<< orphan*/  gpio_mutex; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int AUREON_AC97_STEREO ; 
 unsigned short FUNC0 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC3(kcontrol);
	unsigned short vol;

	FUNC1(&ice->gpio_mutex);

	vol = FUNC0(ice, kcontrol->private_value & 0x7F);
	ucontrol->value.integer.value[0] = 0x1F - (vol & 0x1F);
	if (kcontrol->private_value & AUREON_AC97_STEREO)
		ucontrol->value.integer.value[1] = 0x1F - ((vol >> 8) & 0x1F);

	FUNC2(&ice->gpio_mutex);
	return 0;
}