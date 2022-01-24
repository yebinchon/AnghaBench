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
typedef  int u32 ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5651_priv {int jd_src; int jd_active_high; int ovcd_sf; void* ovcd_th; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5651_GP2_PIN_DMIC1_SCL ; 
 int /*<<< orphan*/  RT5651_GP2_PIN_MASK ; 
 int /*<<< orphan*/  RT5651_GPIO_CTRL1 ; 
 int /*<<< orphan*/  RT5651_IN1_IN2 ; 
 int /*<<< orphan*/  RT5651_IN_DF2 ; 
 void* RT5651_MIC1_OVTH_1500UA ; 
 void* RT5651_MIC1_OVTH_2000UA ; 
 void* RT5651_MIC1_OVTH_600UA ; 
 int RT5651_MIC_OVCD_SF_0P75 ; 
 int RT5651_MIC_OVCD_SF_SFT ; 
 int RT5651_OVCD_SF_1P5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 struct rt5651_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	struct rt5651_priv *rt5651 = FUNC3(component);
	u32 val;

	if (FUNC1(component->dev, "realtek,in2-differential"))
		FUNC4(component, RT5651_IN1_IN2,
				RT5651_IN_DF2, RT5651_IN_DF2);

	if (FUNC1(component->dev, "realtek,dmic-en"))
		FUNC4(component, RT5651_GPIO_CTRL1,
				RT5651_GP2_PIN_MASK, RT5651_GP2_PIN_DMIC1_SCL);

	if (FUNC2(component->dev,
				     "realtek,jack-detect-source", &val) == 0)
		rt5651->jd_src = val;

	if (FUNC1(component->dev, "realtek,jack-detect-not-inverted"))
		rt5651->jd_active_high = true;

	/*
	 * Testing on various boards has shown that good defaults for the OVCD
	 * threshold and scale-factor are 2000µA and 0.75. For an effective
	 * limit of 1500µA, this seems to be more reliable then 1500µA and 1.0.
	 */
	rt5651->ovcd_th = RT5651_MIC1_OVTH_2000UA;
	rt5651->ovcd_sf = RT5651_MIC_OVCD_SF_0P75;

	if (FUNC2(component->dev,
			"realtek,over-current-threshold-microamp", &val) == 0) {
		switch (val) {
		case 600:
			rt5651->ovcd_th = RT5651_MIC1_OVTH_600UA;
			break;
		case 1500:
			rt5651->ovcd_th = RT5651_MIC1_OVTH_1500UA;
			break;
		case 2000:
			rt5651->ovcd_th = RT5651_MIC1_OVTH_2000UA;
			break;
		default:
			FUNC0(component->dev, "Warning: Invalid over-current-threshold-microamp value: %d, defaulting to 2000uA\n",
				 val);
		}
	}

	if (FUNC2(component->dev,
			"realtek,over-current-scale-factor", &val) == 0) {
		if (val <= RT5651_OVCD_SF_1P5)
			rt5651->ovcd_sf = val << RT5651_MIC_OVCD_SF_SFT;
		else
			FUNC0(component->dev, "Warning: Invalid over-current-scale-factor value: %d, defaulting to 0.75\n",
				 val);
	}
}