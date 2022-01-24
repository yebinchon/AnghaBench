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
struct soc_enum {int dummy; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int CTRL0_I2S_BCLK_SEL ; 
 int CTRL0_I2S_DAT_SEL ; 
 int CTRL0_I2S_LRCLK_SEL ; 
 int FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  TOHDMITX_CTRL0 ; 
 unsigned int FUNC1 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 struct snd_soc_dapm_context* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,struct snd_kcontrol*,unsigned int,struct soc_enum*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
					  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC3(kcontrol);
	struct snd_soc_dapm_context *dapm =
		FUNC4(kcontrol);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int mux = ucontrol->value.enumerated.item[0];
	unsigned int val = FUNC1(component,
						       CTRL0_I2S_DAT_SEL);

	/* Force disconnect of the mux while updating */
	if (val != mux)
		FUNC5(dapm, kcontrol, 0, NULL, NULL);

	FUNC2(component, TOHDMITX_CTRL0,
				      CTRL0_I2S_DAT_SEL |
				      CTRL0_I2S_LRCLK_SEL |
				      CTRL0_I2S_BCLK_SEL,
				      FUNC0(CTRL0_I2S_DAT_SEL, mux) |
				      FUNC0(CTRL0_I2S_LRCLK_SEL, mux) |
				      FUNC0(CTRL0_I2S_BCLK_SEL, mux));

	FUNC5(dapm, kcontrol, mux, e, NULL);

	return 0;
}