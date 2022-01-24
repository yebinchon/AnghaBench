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
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int WM8983_ADCENL_MASK ; 
 int WM8983_ADCENR_MASK ; 
 int WM8983_DACENL_MASK ; 
 int WM8983_DACENR_MASK ; 
 int /*<<< orphan*/  WM8983_EQ1_LOW_SHELF ; 
 unsigned int WM8983_EQ3DMODE ; 
 int WM8983_EQ3DMODE_MASK ; 
 unsigned int WM8983_EQ3DMODE_SHIFT ; 
 int /*<<< orphan*/  WM8983_POWER_MANAGEMENT_2 ; 
 int /*<<< orphan*/  WM8983_POWER_MANAGEMENT_3 ; 
 unsigned int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
		      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC3(kcontrol);
	unsigned int regpwr2, regpwr3;
	unsigned int reg_eq;

	if (ucontrol->value.enumerated.item[0] != 0
	    && ucontrol->value.enumerated.item[0] != 1)
		return -EINVAL;

	reg_eq = FUNC0(component, WM8983_EQ1_LOW_SHELF);
	switch ((reg_eq & WM8983_EQ3DMODE) >> WM8983_EQ3DMODE_SHIFT) {
	case 0:
		if (!ucontrol->value.enumerated.item[0])
			return 0;
		break;
	case 1:
		if (ucontrol->value.enumerated.item[0])
			return 0;
		break;
	}

	regpwr2 = FUNC0(component, WM8983_POWER_MANAGEMENT_2);
	regpwr3 = FUNC0(component, WM8983_POWER_MANAGEMENT_3);
	/* disable the DACs and ADCs */
	FUNC1(component, WM8983_POWER_MANAGEMENT_2,
			    WM8983_ADCENR_MASK | WM8983_ADCENL_MASK, 0);
	FUNC1(component, WM8983_POWER_MANAGEMENT_3,
			    WM8983_DACENR_MASK | WM8983_DACENL_MASK, 0);
	/* set the desired eqmode */
	FUNC1(component, WM8983_EQ1_LOW_SHELF,
			    WM8983_EQ3DMODE_MASK,
			    ucontrol->value.enumerated.item[0]
			    << WM8983_EQ3DMODE_SHIFT);
	/* restore DAC/ADC configuration */
	FUNC2(component, WM8983_POWER_MANAGEMENT_2, regpwr2);
	FUNC2(component, WM8983_POWER_MANAGEMENT_3, regpwr3);
	return 0;
}