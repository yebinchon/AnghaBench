#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct soc_enum {int items; unsigned int shift_l; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_5__ {int* item; } ;
struct TYPE_6__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {struct madera* madera; } ;
struct TYPE_7__ {int* out_mono; } ;
struct TYPE_8__ {TYPE_3__ codec; } ;
struct madera {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; TYPE_4__ pdata; } ;
struct cs47l92 {struct madera_priv core; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int MADERA_EP_SEL ; 
 int /*<<< orphan*/  MADERA_EP_SEL_MASK ; 
 unsigned int MADERA_OUT3L_ENA ; 
 unsigned int MADERA_OUT3R_ENA ; 
 int /*<<< orphan*/  MADERA_OUTPUT_ENABLES_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct snd_soc_component*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct snd_soc_dapm_context* FUNC6 (struct snd_soc_component*) ; 
 struct cs47l92* FUNC7 (struct snd_soc_component*) ; 
 unsigned int FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_soc_component* FUNC9 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_dapm_context*) ; 
 int FUNC12 (struct snd_soc_dapm_context*,struct snd_kcontrol*,unsigned int,struct soc_enum*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct snd_kcontrol *kcontrol,
			     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC9(kcontrol);
	struct snd_soc_dapm_context *dapm =
		FUNC6(component);
	struct cs47l92 *cs47l92 = FUNC7(component);
	struct madera_priv *priv = &cs47l92->core;
	struct madera *madera = priv->madera;
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int ep_sel, mux, change, cur;
	bool out_mono;
	int ret;

	if (ucontrol->value.enumerated.item[0] > e->items - 1)
		return -EINVAL;

	mux = ucontrol->value.enumerated.item[0];

	FUNC10(dapm);

	ep_sel = mux << e->shift_l;

	change = FUNC8(component, MADERA_OUTPUT_ENABLES_1,
					     MADERA_EP_SEL_MASK,
					     ep_sel);
	if (!change)
		goto end;

	ret = FUNC4(madera->regmap, MADERA_OUTPUT_ENABLES_1, &cur);
	if (ret != 0)
		FUNC1(madera->dev, "Failed to read outputs: %d\n", ret);

	/* EP_SEL should not be modified while HPOUT3 or 4 is enabled */
	ret = FUNC5(madera->regmap, MADERA_OUTPUT_ENABLES_1,
				 MADERA_OUT3L_ENA | MADERA_OUT3R_ENA, 0);
	if (ret)
		FUNC1(madera->dev, "Failed to disable outputs: %d\n", ret);

	FUNC13(2000, 3000); /* wait for wseq to complete */

	ret = FUNC5(madera->regmap, MADERA_OUTPUT_ENABLES_1,
				 MADERA_EP_SEL, ep_sel);
	if (ret) {
		FUNC0(madera->dev, "Failed to set OUT3 demux: %d\n", ret);
	} else {
		out_mono = madera->pdata.codec.out_mono[2 + mux];

		ret = FUNC2(component, 3, out_mono);
		if (ret < 0)
			FUNC1(madera->dev,
				 "Failed to set output mode: %d\n", ret);
	}

	ret = FUNC5(madera->regmap, MADERA_OUTPUT_ENABLES_1,
				 MADERA_OUT3L_ENA | MADERA_OUT3R_ENA, cur);
	if (ret) {
		FUNC1(madera->dev, "Failed to restore outputs: %d\n", ret);
	} else {
		/* wait for wseq */
		if (cur & (MADERA_OUT3L_ENA | MADERA_OUT3R_ENA))
			FUNC3(34); /* enable delay */
		else
			FUNC13(2000, 3000); /* disable delay */
	}

end:
	FUNC11(dapm);

	return FUNC12(dapm, kcontrol, mux, e, NULL);
}