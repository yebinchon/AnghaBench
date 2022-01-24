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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct aic31xx_priv {int codec_type; } ;

/* Variables and functions */
 int AIC31XX_STEREO_CLASS_D_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DAC31XX_BIT ; 
 int /*<<< orphan*/  aic310x_audio_map ; 
 int /*<<< orphan*/  aic310x_dapm_widgets ; 
 int /*<<< orphan*/  aic311x_audio_map ; 
 int /*<<< orphan*/  aic311x_dapm_widgets ; 
 int /*<<< orphan*/  aic31xx_audio_map ; 
 int /*<<< orphan*/  aic31xx_dapm_widgets ; 
 int /*<<< orphan*/  dac31xx_audio_map ; 
 int /*<<< orphan*/  dac31xx_dapm_widgets ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 struct aic31xx_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC1(component);
	struct aic31xx_priv *aic31xx = FUNC2(component);
	int ret = 0;

	if (aic31xx->codec_type & DAC31XX_BIT) {
		ret = FUNC4(
			dapm, dac31xx_dapm_widgets,
			FUNC0(dac31xx_dapm_widgets));
		if (ret)
			return ret;

		ret = FUNC3(dapm, dac31xx_audio_map,
					      FUNC0(dac31xx_audio_map));
		if (ret)
			return ret;
	} else {
		ret = FUNC4(
			dapm, aic31xx_dapm_widgets,
			FUNC0(aic31xx_dapm_widgets));
		if (ret)
			return ret;

		ret = FUNC3(dapm, aic31xx_audio_map,
					      FUNC0(aic31xx_audio_map));
		if (ret)
			return ret;
	}

	if (aic31xx->codec_type & AIC31XX_STEREO_CLASS_D_BIT) {
		ret = FUNC4(
			dapm, aic311x_dapm_widgets,
			FUNC0(aic311x_dapm_widgets));
		if (ret)
			return ret;

		ret = FUNC3(dapm, aic311x_audio_map,
					      FUNC0(aic311x_audio_map));
		if (ret)
			return ret;
	} else {
		ret = FUNC4(
			dapm, aic310x_dapm_widgets,
			FUNC0(aic310x_dapm_widgets));
		if (ret)
			return ret;

		ret = FUNC3(dapm, aic310x_audio_map,
					      FUNC0(aic310x_audio_map));
		if (ret)
			return ret;
	}

	return 0;
}