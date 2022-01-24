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
struct snd_ice1712 {int dummy; } ;
struct TYPE_4__ {scalar_t__* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DATA ; 
 int FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ,int) ; 
 struct snd_ice1712* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC4(kcontrol);
	unsigned char mask = kcontrol->private_value & 0xff;
	int val, nval;

	if (kcontrol->private_value & (1 << 31))
		return -EPERM;
	nval = ucontrol->value.enumerated.item[0] ? mask : 0;
	FUNC2(ice);
	val = FUNC0(ice, ICE1712_IREG_GPIO_DATA);
	nval |= val & ~mask;
	FUNC3(ice, ICE1712_IREG_GPIO_DATA, nval);
	FUNC1(ice);
	return val != nval;
}