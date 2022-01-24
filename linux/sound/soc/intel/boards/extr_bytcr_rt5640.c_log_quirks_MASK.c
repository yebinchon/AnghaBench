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
 int BYT_RT5640_DIFF_MIC ; 
#define  BYT_RT5640_DMIC1_MAP 131 
#define  BYT_RT5640_DMIC2_MAP 130 
#define  BYT_RT5640_IN1_MAP 129 
#define  BYT_RT5640_IN3_MAP 128 
 scalar_t__ FUNC0 (int) ; 
 int BYT_RT5640_JD_NOT_INV ; 
 int FUNC1 (int) ; 
 int BYT_RT5640_MCLK_25MHZ ; 
 int BYT_RT5640_MCLK_EN ; 
 int BYT_RT5640_MONO_SPEAKER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int BYT_RT5640_SSP0_AIF1 ; 
 int BYT_RT5640_SSP0_AIF2 ; 
 int BYT_RT5640_SSP2_AIF2 ; 
 int byt_rt5640_quirk ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 scalar_t__ is_bytcr ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	int map;
	bool has_mclk = false;
	bool has_ssp0 = false;
	bool has_ssp0_aif1 = false;
	bool has_ssp0_aif2 = false;
	bool has_ssp2_aif2 = false;

	map = FUNC1(byt_rt5640_quirk);
	switch (map) {
	case BYT_RT5640_DMIC1_MAP:
		FUNC5(dev, "quirk DMIC1_MAP enabled\n");
		break;
	case BYT_RT5640_DMIC2_MAP:
		FUNC5(dev, "quirk DMIC2_MAP enabled\n");
		break;
	case BYT_RT5640_IN1_MAP:
		FUNC5(dev, "quirk IN1_MAP enabled\n");
		break;
	case BYT_RT5640_IN3_MAP:
		FUNC5(dev, "quirk IN3_MAP enabled\n");
		break;
	default:
		FUNC4(dev, "quirk map 0x%x is not supported, microphone input will not work\n", map);
		break;
	}
	if (FUNC0(byt_rt5640_quirk)) {
		FUNC5(dev, "quirk realtek,jack-detect-source %ld\n",
			 FUNC0(byt_rt5640_quirk));
		FUNC5(dev, "quirk realtek,over-current-threshold-microamp %ld\n",
			 FUNC3(byt_rt5640_quirk) * 100);
		FUNC5(dev, "quirk realtek,over-current-scale-factor %ld\n",
			 FUNC2(byt_rt5640_quirk));
	}
	if (byt_rt5640_quirk & BYT_RT5640_JD_NOT_INV)
		FUNC5(dev, "quirk JD_NOT_INV enabled\n");
	if (byt_rt5640_quirk & BYT_RT5640_MONO_SPEAKER)
		FUNC5(dev, "quirk MONO_SPEAKER enabled\n");
	if (byt_rt5640_quirk & BYT_RT5640_DIFF_MIC)
		FUNC5(dev, "quirk DIFF_MIC enabled\n");
	if (byt_rt5640_quirk & BYT_RT5640_SSP0_AIF1) {
		FUNC5(dev, "quirk SSP0_AIF1 enabled\n");
		has_ssp0 = true;
		has_ssp0_aif1 = true;
	}
	if (byt_rt5640_quirk & BYT_RT5640_SSP0_AIF2) {
		FUNC5(dev, "quirk SSP0_AIF2 enabled\n");
		has_ssp0 = true;
		has_ssp0_aif2 = true;
	}
	if (byt_rt5640_quirk & BYT_RT5640_SSP2_AIF2) {
		FUNC5(dev, "quirk SSP2_AIF2 enabled\n");
		has_ssp2_aif2 = true;
	}
	if (is_bytcr && !has_ssp0)
		FUNC4(dev, "Invalid routing, bytcr detected but no SSP0-based quirk, audio cannot work with SSP2 on bytcr\n");
	if (has_ssp0_aif1 && has_ssp0_aif2)
		FUNC4(dev, "Invalid routing, SSP0 cannot be connected to both AIF1 and AIF2\n");
	if (has_ssp0 && has_ssp2_aif2)
		FUNC4(dev, "Invalid routing, cannot have both SSP0 and SSP2 connected to codec\n");

	if (byt_rt5640_quirk & BYT_RT5640_MCLK_EN) {
		FUNC5(dev, "quirk MCLK_EN enabled\n");
		has_mclk = true;
	}
	if (byt_rt5640_quirk & BYT_RT5640_MCLK_25MHZ) {
		if (has_mclk)
			FUNC5(dev, "quirk MCLK_25MHZ enabled\n");
		else
			FUNC4(dev, "quirk MCLK_25MHZ enabled but quirk MCLK not selected, will be ignored\n");
	}
}