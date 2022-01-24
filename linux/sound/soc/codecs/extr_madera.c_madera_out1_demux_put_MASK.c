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
struct soc_enum {int items; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_5__ {int* item; } ;
struct TYPE_6__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct madera_priv {struct madera* madera; } ;
struct TYPE_7__ {int /*<<< orphan*/ * out_mono; } ;
struct TYPE_8__ {TYPE_3__ codec; } ;
struct madera {unsigned int hp_ena; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * out_shorted; scalar_t__* out_clamp; TYPE_4__ pdata; } ;

/* Variables and functions */
 int EINVAL ; 
 int MADERA_EP_SEL_MASK ; 
 unsigned int MADERA_EP_SEL_SHIFT ; 
 int MADERA_OUT1L_ENA ; 
 int MADERA_OUT1R_ENA ; 
 int /*<<< orphan*/  MADERA_OUTPUT_ENABLES_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct snd_soc_component*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct madera_priv* FUNC5 (struct snd_soc_component*) ; 
 unsigned int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct snd_soc_component* FUNC7 (struct snd_kcontrol*) ; 
 struct snd_soc_dapm_context* FUNC8 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dapm_context*) ; 
 int FUNC11 (struct snd_soc_dapm_context*,struct snd_kcontrol*,unsigned int,struct soc_enum*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

int FUNC13(struct snd_kcontrol *kcontrol,
			  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC7(kcontrol);
	struct snd_soc_dapm_context *dapm =
		FUNC8(kcontrol);
	struct madera_priv *priv = FUNC5(component);
	struct madera *madera = priv->madera;
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int ep_sel, mux, change;
	bool out_mono;
	int ret;

	if (ucontrol->value.enumerated.item[0] > e->items - 1)
		return -EINVAL;

	mux = ucontrol->value.enumerated.item[0];

	FUNC9(dapm);

	ep_sel = mux << MADERA_EP_SEL_SHIFT;

	change = FUNC6(component, MADERA_OUTPUT_ENABLES_1,
					     MADERA_EP_SEL_MASK,
					     ep_sel);
	if (!change)
		goto end;

	/* EP_SEL should not be modified while HP or EP driver is enabled */
	ret = FUNC4(madera->regmap, MADERA_OUTPUT_ENABLES_1,
				 MADERA_OUT1L_ENA | MADERA_OUT1R_ENA, 0);
	if (ret)
		FUNC1(madera->dev, "Failed to disable outputs: %d\n", ret);

	FUNC12(2000, 3000); /* wait for wseq to complete */

	/* change demux setting */
	if (madera->out_clamp[0])
		ret = FUNC4(madera->regmap,
					 MADERA_OUTPUT_ENABLES_1,
					 MADERA_EP_SEL_MASK, ep_sel);
	if (ret) {
		FUNC0(madera->dev, "Failed to set OUT1 demux: %d\n", ret);
	} else {
		/* apply correct setting for mono mode */
		if (!ep_sel && !madera->pdata.codec.out_mono[0])
			out_mono = false; /* stereo HP */
		else
			out_mono = true; /* EP or mono HP */

		ret = FUNC2(component, 1, out_mono);
		if (ret)
			FUNC1(madera->dev,
				 "Failed to set output mode: %d\n", ret);
	}

	/*
	 * if HPDET has disabled the clamp while switching to HPOUT
	 * OUT1 should remain disabled
	 */
	if (ep_sel ||
	    (madera->out_clamp[0] && !madera->out_shorted[0])) {
		ret = FUNC4(madera->regmap,
					 MADERA_OUTPUT_ENABLES_1,
					 MADERA_OUT1L_ENA | MADERA_OUT1R_ENA,
					 madera->hp_ena);
		if (ret)
			FUNC1(madera->dev,
				 "Failed to restore earpiece outputs: %d\n",
				 ret);
		else if (madera->hp_ena)
			FUNC3(34); /* wait for enable wseq */
		else
			FUNC12(2000, 3000); /* wait for disable wseq */
	}

end:
	FUNC10(dapm);

	return FUNC11(dapm, kcontrol, mux, e, NULL);
}