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
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 scalar_t__ WM_ADC_GAIN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 
 unsigned short FUNC3 (struct snd_ice1712*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,scalar_t__,unsigned short) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	unsigned short new, old;
	int i, change = 0;

	FUNC1(ice);
	for (i = 0; i < 2; i++) {
		old = FUNC3(ice, WM_ADC_GAIN + i);
		new = (~ucontrol->value.integer.value[i]<<5&0x20) | (old&~0x20);
		if (new != old) {
			FUNC4(ice, WM_ADC_GAIN + i, new);
			change = 1;
		}
	}
	FUNC0(ice);

	return change;
}