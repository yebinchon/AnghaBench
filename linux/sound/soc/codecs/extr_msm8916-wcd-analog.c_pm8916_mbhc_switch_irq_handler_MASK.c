#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_component {int dummy; } ;
struct pm8916_wcd_analog_priv {int mbhc_btn0_released; int detect_accessory_type; int /*<<< orphan*/  jack; struct snd_soc_component* component; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_A_MBHC_DET_CTL_1 ; 
 int CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_MASK ; 
 int CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_SHIFT ; 
 int /*<<< orphan*/  CDC_A_MICB_2_EN ; 
 int CDC_A_MICB_2_EN_ENABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  SND_JACK_HEADSET ; 
 int /*<<< orphan*/  hs_jack_mask ; 
 int /*<<< orphan*/  FUNC0 (struct pm8916_wcd_analog_priv*,int) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *arg)
{
	struct pm8916_wcd_analog_priv *priv = arg;
	struct snd_soc_component *component = priv->component;
	bool ins = false;

	if (FUNC1(component, CDC_A_MBHC_DET_CTL_1) &
				CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_MASK)
		ins = true;

	/* Set the detection type appropriately */
	FUNC2(component, CDC_A_MBHC_DET_CTL_1,
			    CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_MASK,
			    (!ins << CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_SHIFT));


	if (ins) { /* hs insertion */
		bool micbias_enabled = false;

		if (FUNC1(component, CDC_A_MICB_2_EN) &
				CDC_A_MICB_2_EN_ENABLE)
			micbias_enabled = true;

		FUNC0(priv, micbias_enabled);

		/*
		 * if only a btn0 press event is receive just before
		 * insert event then its a 3 pole headphone else if
		 * both press and release event received then its
		 * a headset.
		 */
		if (priv->mbhc_btn0_released)
			FUNC3(priv->jack,
					    SND_JACK_HEADSET, hs_jack_mask);
		else
			FUNC3(priv->jack,
					    SND_JACK_HEADPHONE, hs_jack_mask);

		priv->detect_accessory_type = false;

	} else { /* removal */
		FUNC3(priv->jack, 0, hs_jack_mask);
		priv->detect_accessory_type = true;
		priv->mbhc_btn0_released = false;
	}

	return IRQ_HANDLED;
}