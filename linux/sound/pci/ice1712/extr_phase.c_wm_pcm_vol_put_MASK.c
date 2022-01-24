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
struct TYPE_3__ {unsigned short* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned short PCM_MIN ; 
 unsigned short PCM_RES ; 
 int /*<<< orphan*/  WM_DAC_DIG_MASTER_ATTEN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	unsigned short ovol, nvol;
	int change = 0;

	nvol = ucontrol->value.integer.value[0];
	if (nvol > PCM_RES)
		return -EINVAL;
	FUNC1(ice);
	nvol = (nvol ? (nvol + PCM_MIN) : 0) & 0xff;
	ovol = FUNC3(ice, WM_DAC_DIG_MASTER_ATTEN) & 0xff;
	if (ovol != nvol) {
		FUNC4(ice, WM_DAC_DIG_MASTER_ATTEN, nvol); /* prelatch */
		/* update */
		FUNC5(ice, WM_DAC_DIG_MASTER_ATTEN, nvol | 0x100);
		change = 1;
	}
	FUNC0(ice);
	return change;
}