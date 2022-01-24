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
struct snd_pmac {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 struct snd_pmac* FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct snd_pmac*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_pmac *chip = FUNC1(kcontrol);
	unsigned int addr = FUNC0(kcontrol->private_value & 0xff);
	int stereo = (kcontrol->private_value >> 24) & 1;
	int atten = (kcontrol->private_value >> 25) & 1;
	int oval;

	oval = FUNC2(chip, addr);
	if (atten)
		oval = ~oval & 0xff;
	ucontrol->value.integer.value[0] = oval & 0xf;
	if (stereo)
		ucontrol->value.integer.value[1] = (oval >> 4) & 0xf;
	return 0;
}