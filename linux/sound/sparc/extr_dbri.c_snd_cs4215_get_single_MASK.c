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
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* data; int* ctrl; } ;
struct snd_dbri {TYPE_1__ mm; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct snd_dbri* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_dbri *dbri = FUNC1(kcontrol);
	int elem = kcontrol->private_value & 0xff;
	int shift = (kcontrol->private_value >> 8) & 0xff;
	int mask = (kcontrol->private_value >> 16) & 0xff;
	int invert = (kcontrol->private_value >> 24) & 1;

	if (FUNC0(!dbri))
		return -EINVAL;

	if (elem < 4)
		ucontrol->value.integer.value[0] =
		    (dbri->mm.data[elem] >> shift) & mask;
	else
		ucontrol->value.integer.value[0] =
		    (dbri->mm.ctrl[elem - 4] >> shift) & mask;

	if (invert == 1)
		ucontrol->value.integer.value[0] =
		    mask - ucontrol->value.integer.value[0];
	return 0;
}