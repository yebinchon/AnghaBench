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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  TAS5720_VOLUME_CTRL_REG ; 
 int /*<<< orphan*/  TAS5722_DIGITAL_CTRL2_REG ; 
 int /*<<< orphan*/  TAS5722_VOL_CONTROL_LSB ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	unsigned int sel = ucontrol->value.integer.value[0];

	FUNC1(component, TAS5720_VOLUME_CTRL_REG, sel >> 1);
	FUNC0(component, TAS5722_DIGITAL_CTRL2_REG,
				      TAS5722_VOL_CONTROL_LSB, sel);

	return 0;
}