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
struct device {int dummy; } ;

/* Variables and functions */
 int BYT_RT5651_DMIC_EN ; 
 scalar_t__ BYT_RT5651_DMIC_MAP ; 
 scalar_t__ BYT_RT5651_IN1_IN2_MAP ; 
 scalar_t__ BYT_RT5651_IN1_MAP ; 
 scalar_t__ BYT_RT5651_IN2_MAP ; 
 scalar_t__ FUNC0 (int) ; 
 int BYT_RT5651_JD_NOT_INV ; 
 scalar_t__ FUNC1 (int) ; 
 int BYT_RT5651_MCLK_25MHZ ; 
 int BYT_RT5651_MCLK_EN ; 
 int BYT_RT5651_MONO_SPEAKER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int BYT_RT5651_SSP0_AIF1 ; 
 int BYT_RT5651_SSP0_AIF2 ; 
 int BYT_RT5651_SSP2_AIF2 ; 
 int byt_rt5651_quirk ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	if (FUNC1(byt_rt5651_quirk) == BYT_RT5651_DMIC_MAP)
		FUNC4(dev, "quirk DMIC_MAP enabled");
	if (FUNC1(byt_rt5651_quirk) == BYT_RT5651_IN1_MAP)
		FUNC4(dev, "quirk IN1_MAP enabled");
	if (FUNC1(byt_rt5651_quirk) == BYT_RT5651_IN2_MAP)
		FUNC4(dev, "quirk IN2_MAP enabled");
	if (FUNC1(byt_rt5651_quirk) == BYT_RT5651_IN1_IN2_MAP)
		FUNC4(dev, "quirk IN1_IN2_MAP enabled");
	if (FUNC0(byt_rt5651_quirk)) {
		FUNC4(dev, "quirk realtek,jack-detect-source %ld\n",
			 FUNC0(byt_rt5651_quirk));
		FUNC4(dev, "quirk realtek,over-current-threshold-microamp %ld\n",
			 FUNC3(byt_rt5651_quirk) * 100);
		FUNC4(dev, "quirk realtek,over-current-scale-factor %ld\n",
			 FUNC2(byt_rt5651_quirk));
	}
	if (byt_rt5651_quirk & BYT_RT5651_DMIC_EN)
		FUNC4(dev, "quirk DMIC enabled");
	if (byt_rt5651_quirk & BYT_RT5651_MCLK_EN)
		FUNC4(dev, "quirk MCLK_EN enabled");
	if (byt_rt5651_quirk & BYT_RT5651_MCLK_25MHZ)
		FUNC4(dev, "quirk MCLK_25MHZ enabled");
	if (byt_rt5651_quirk & BYT_RT5651_SSP2_AIF2)
		FUNC4(dev, "quirk SSP2_AIF2 enabled\n");
	if (byt_rt5651_quirk & BYT_RT5651_SSP0_AIF1)
		FUNC4(dev, "quirk SSP0_AIF1 enabled\n");
	if (byt_rt5651_quirk & BYT_RT5651_SSP0_AIF2)
		FUNC4(dev, "quirk SSP0_AIF2 enabled\n");
	if (byt_rt5651_quirk & BYT_RT5651_MONO_SPEAKER)
		FUNC4(dev, "quirk MONO_SPEAKER enabled\n");
	if (byt_rt5651_quirk & BYT_RT5651_JD_NOT_INV)
		FUNC4(dev, "quirk JD_NOT_INV enabled\n");
}