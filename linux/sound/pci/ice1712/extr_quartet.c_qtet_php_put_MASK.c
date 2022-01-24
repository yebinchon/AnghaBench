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
struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 unsigned int SCR_PHP ; 
 unsigned int SCR_PHP_V ; 
 unsigned int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
		struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	unsigned int old, new;
	old = new = FUNC0(ice);
	if (ucontrol->value.integer.value[0] /* phantom on requested */
			&& (~old & SCR_PHP_V)) /* 0 = voltage 5V */ {
		/* is off, turn on */
		/* turn voltage on first, = 1 */
		new = old | SCR_PHP_V;
		FUNC1(ice, new);
		/* turn phantom on, = 0 */
		new &= ~SCR_PHP;
		FUNC1(ice, new);
	} else if (!ucontrol->value.integer.value[0] && (old & SCR_PHP_V)) {
		/* phantom off requested and 1 = voltage 48V */
		/* is on, turn off */
		/* turn voltage off first, = 0 */
		new = old & ~SCR_PHP_V;
		FUNC1(ice, new);
		/* turn phantom off, = 1 */
		new |= SCR_PHP;
		FUNC1(ice, new);
	}
	if (old != new)
		return 1;
	/* no change */
	return 0;
}