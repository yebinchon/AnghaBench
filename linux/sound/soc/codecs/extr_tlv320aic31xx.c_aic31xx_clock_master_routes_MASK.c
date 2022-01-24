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
struct aic31xx_priv {int master_dapm_route_applied; int codec_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DAC31XX_BIT ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFS ; 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 int /*<<< orphan*/  aic31xx_cm_audio_map ; 
 int /*<<< orphan*/  common31xx_cm_audio_map ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 struct aic31xx_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
				       unsigned int fmt)
{
	struct snd_soc_dapm_context *dapm = FUNC1(component);
	struct aic31xx_priv *aic31xx = FUNC2(component);
	int ret;

	fmt &= SND_SOC_DAIFMT_MASTER_MASK;
	if (fmt == SND_SOC_DAIFMT_CBS_CFS &&
	    aic31xx->master_dapm_route_applied) {
		/*
		 * Remove the DAPM route(s) for codec clock master modes,
		 * if applied
		 */
		ret = FUNC4(dapm, common31xx_cm_audio_map,
					FUNC0(common31xx_cm_audio_map));
		if (!ret && !(aic31xx->codec_type & DAC31XX_BIT))
			ret = FUNC4(dapm,
					aic31xx_cm_audio_map,
					FUNC0(aic31xx_cm_audio_map));

		if (ret)
			return ret;

		aic31xx->master_dapm_route_applied = false;
	} else if (fmt != SND_SOC_DAIFMT_CBS_CFS &&
		   !aic31xx->master_dapm_route_applied) {
		/*
		 * Add the needed DAPM route(s) for codec clock master modes,
		 * if it is not done already
		 */
		ret = FUNC3(dapm, common31xx_cm_audio_map,
					FUNC0(common31xx_cm_audio_map));
		if (!ret && !(aic31xx->codec_type & DAC31XX_BIT))
			ret = FUNC3(dapm,
					aic31xx_cm_audio_map,
					FUNC0(aic31xx_cm_audio_map));

		if (ret)
			return ret;

		aic31xx->master_dapm_route_applied = true;
	}

	return 0;
}