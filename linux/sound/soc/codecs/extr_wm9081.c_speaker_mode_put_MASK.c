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
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM9081_ANALOGUE_SPEAKER_2 ; 
 unsigned int WM9081_OUT_SPK_CTRL ; 
 int /*<<< orphan*/  WM9081_POWER_MANAGEMENT ; 
 unsigned int WM9081_SPK_ENA ; 
 unsigned int WM9081_SPK_INV_MUTE ; 
 unsigned int WM9081_SPK_MODE ; 
 unsigned int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			    struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	unsigned int reg_pwr = FUNC0(component, WM9081_POWER_MANAGEMENT);
	unsigned int reg2 = FUNC0(component, WM9081_ANALOGUE_SPEAKER_2);

	/* Are we changing anything? */
	if (ucontrol->value.enumerated.item[0] ==
	    ((reg2 & WM9081_SPK_MODE) != 0))
		return 0;

	/* Don't try to change modes while enabled */
	if (reg_pwr & WM9081_SPK_ENA)
		return -EINVAL;

	if (ucontrol->value.enumerated.item[0]) {
		/* Class AB */
		reg2 &= ~(WM9081_SPK_INV_MUTE | WM9081_OUT_SPK_CTRL);
		reg2 |= WM9081_SPK_MODE;
	} else {
		/* Class D */
		reg2 |= WM9081_SPK_INV_MUTE | WM9081_OUT_SPK_CTRL;
		reg2 &= ~WM9081_SPK_MODE;
	}

	FUNC1(component, WM9081_ANALOGUE_SPEAKER_2, reg2);

	return 0;
}