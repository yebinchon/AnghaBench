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
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF9554_REG_OUTPUT ; 
 int FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char) ; 
 struct snd_ice1712* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC2(kcontrol);
	int shift = kcontrol->private_value & 0xff;
	int invert = (kcontrol->private_value >> 8) & 1;
	int data, ndata;
	
	if ((data = FUNC0(ice, PCF9554_REG_OUTPUT)) < 0)
		return data;
	ndata = data & ~(1 << shift);
	if (ucontrol->value.integer.value[0])
		ndata |= (1 << shift);
	if (invert)
		ndata ^= (1 << shift);
	if (data != ndata) {
		FUNC1(ice, PCF9554_REG_OUTPUT, (unsigned char)ndata);
		return 1;
	}
	return 0;
}