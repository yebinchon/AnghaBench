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
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  write_mask; int /*<<< orphan*/  direction; } ;
struct snd_ice1712 {int /*<<< orphan*/  gpio_mutex; TYPE_1__ gpio; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,unsigned int) ; 
 struct snd_ice1712* FUNC6 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC6(kcontrol);
	unsigned int val, nval;
	int changed = 0;
	FUNC0(&ice->gpio_mutex);
	FUNC3(ice, ice->gpio.direction);
	FUNC4(ice, ice->gpio.write_mask);
	val = FUNC2(ice) & 0xffff;
	nval = ucontrol->value.integer.value[0] & 0xffff;
	if (val != nval) {
		FUNC5(ice, nval);
		changed = 1;
	}
	FUNC1(&ice->gpio_mutex);
	return changed;
}