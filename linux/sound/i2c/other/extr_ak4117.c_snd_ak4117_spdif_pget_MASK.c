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
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ak4117 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4117_REG_Pc0 ; 
 int /*<<< orphan*/  AK4117_REG_Pc1 ; 
 int /*<<< orphan*/  AK4117_REG_Pd0 ; 
 int /*<<< orphan*/  AK4117_REG_Pd1 ; 
 int FUNC0 (struct ak4117*,int /*<<< orphan*/ ) ; 
 struct ak4117* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct ak4117 *chip = FUNC1(kcontrol);
	unsigned short tmp;

	ucontrol->value.integer.value[0] = 0xf8f2;
	ucontrol->value.integer.value[1] = 0x4e1f;
	tmp = FUNC0(chip, AK4117_REG_Pc0) | (FUNC0(chip, AK4117_REG_Pc1) << 8);
	ucontrol->value.integer.value[2] = tmp;
	tmp = FUNC0(chip, AK4117_REG_Pd0) | (FUNC0(chip, AK4117_REG_Pd1) << 8);
	ucontrol->value.integer.value[3] = tmp;
	return 0;
}