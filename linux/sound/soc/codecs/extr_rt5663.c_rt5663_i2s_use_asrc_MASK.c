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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5663_priv {int codec_ver; int sysclk; int lrck; } ;

/* Variables and functions */
#define  CODEC_VER_0 129 
#define  CODEC_VER_1 128 
 int RT5663_AD_STO1_TRACK_MASK ; 
 int /*<<< orphan*/  RT5663_ASRC_2 ; 
 int /*<<< orphan*/  RT5663_ASRC_3 ; 
 int RT5663_DA_STO1_TRACK_MASK ; 
 int RT5663_V2_AD_STO1_TRACK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct rt5663_priv* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *source,
	struct snd_soc_dapm_widget *sink)
{
	struct snd_soc_component *component = FUNC3(source->dapm);
	struct rt5663_priv *rt5663 = FUNC1(component);
	int da_asrc_en, ad_asrc_en;

	da_asrc_en = (FUNC2(component, RT5663_ASRC_2) &
		RT5663_DA_STO1_TRACK_MASK) ? 1 : 0;
	switch (rt5663->codec_ver) {
	case CODEC_VER_1:
		ad_asrc_en = (FUNC2(component, RT5663_ASRC_3) &
			RT5663_V2_AD_STO1_TRACK_MASK) ? 1 : 0;
		break;
	case CODEC_VER_0:
		ad_asrc_en = (FUNC2(component, RT5663_ASRC_2) &
			RT5663_AD_STO1_TRACK_MASK) ? 1 : 0;
		break;
	default:
		FUNC0(component->dev, "Unknown CODEC Version\n");
		return 1;
	}

	if (da_asrc_en || ad_asrc_en)
		if (rt5663->sysclk > rt5663->lrck * 384)
			return 1;

	FUNC0(component->dev, "sysclk < 384 x fs, disable i2s asrc\n");

	return 0;
}