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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct sirf_audio_codec {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_IC_CODEC_CTRL1 ; 
 int /*<<< orphan*/  PRIMA2_CODEC_ENABLE_BITS ; 
 int /*<<< orphan*/  PRIMA2_CODEC_RESET_BITS ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sirf_audio_codec* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *kcontrol, int event)
{
#define PRIMA2_CODEC_ENABLE_BITS (1 << 27)
#define PRIMA2_CODEC_RESET_BITS (1 << 26)
	struct snd_soc_component *component = FUNC3(w->dapm);
	struct sirf_audio_codec *sirf_audio_codec = FUNC2(component);
	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC0(sirf_audio_codec->regmap,
			PRIMA2_CODEC_ENABLE_BITS, PRIMA2_CODEC_RESET_BITS);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC1(sirf_audio_codec->regmap,
			AUDIO_IC_CODEC_CTRL1, PRIMA2_CODEC_ENABLE_BITS, 0);
		break;
	default:
		break;
	}

	return 0;
}