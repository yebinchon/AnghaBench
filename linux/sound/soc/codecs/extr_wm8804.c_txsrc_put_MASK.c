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
struct soc_enum {unsigned int shift_l; int /*<<< orphan*/  reg; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8804_PWRDN ; 
 struct snd_soc_dapm_context* FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
		     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC4(kcontrol);
	struct snd_soc_dapm_context *dapm = FUNC0(component);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int val = ucontrol->value.enumerated.item[0] << e->shift_l;
	unsigned int mask = 1 << e->shift_l;
	unsigned int txpwr;

	if (val != 0 && val != mask)
		return -EINVAL;

	FUNC5(dapm);

	if (FUNC2(component, e->reg, mask, val)) {
		/* save the current power state of the transmitter */
		txpwr = FUNC1(component, WM8804_PWRDN) & 0x4;

		/* power down the transmitter */
		FUNC3(component, WM8804_PWRDN, 0x4, 0x4);

		/* set the tx source */
		FUNC3(component, e->reg, mask, val);

		/* restore the transmitter's configuration */
		FUNC3(component, WM8804_PWRDN, 0x4, txpwr);
	}

	FUNC6(dapm);

	return 0;
}