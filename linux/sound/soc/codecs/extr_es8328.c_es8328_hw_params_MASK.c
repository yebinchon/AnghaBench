#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct es8328_priv {int* mclk_ratios; scalar_t__ playback_fs; scalar_t__ mclkdiv2; TYPE_1__* sysclk_constraints; scalar_t__ master; } ;
struct TYPE_2__ {int count; scalar_t__* list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ES8328_ADCCONTROL4 ; 
 int ES8328_ADCCONTROL4_ADCWL_MASK ; 
 int ES8328_ADCCONTROL4_ADCWL_SHIFT ; 
 int ES8328_ADCCONTROL5 ; 
 int ES8328_DACCONTROL1 ; 
 int ES8328_DACCONTROL1_DACWL_MASK ; 
 int ES8328_DACCONTROL1_DACWL_SHIFT ; 
 int ES8328_DACCONTROL2 ; 
 int ES8328_MASTERMODE ; 
 int ES8328_MASTERMODE_MCLKDIV2 ; 
 int ES8328_RATEMASK ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 scalar_t__ FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 struct es8328_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params,
	struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct es8328_priv *es8328 = FUNC4(component);
	int i;
	int reg;
	int wl;
	int ratio;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		reg = ES8328_DACCONTROL2;
	else
		reg = ES8328_ADCCONTROL5;

	if (es8328->master) {
		if (!es8328->sysclk_constraints) {
			FUNC0(component->dev, "No MCLK configured\n");
			return -EINVAL;
		}

		for (i = 0; i < es8328->sysclk_constraints->count; i++)
			if (es8328->sysclk_constraints->list[i] ==
			    FUNC2(params))
				break;

		if (i == es8328->sysclk_constraints->count) {
			FUNC0(component->dev,
				"LRCLK %d unsupported with current clock\n",
				FUNC2(params));
			return -EINVAL;
		}
		ratio = es8328->mclk_ratios[i];
	} else {
		ratio = 0;
		es8328->mclkdiv2 = 0;
	}

	FUNC5(component, ES8328_MASTERMODE,
			ES8328_MASTERMODE_MCLKDIV2,
			es8328->mclkdiv2 ? ES8328_MASTERMODE_MCLKDIV2 : 0);

	switch (FUNC3(params)) {
	case 16:
		wl = 3;
		break;
	case 18:
		wl = 2;
		break;
	case 20:
		wl = 1;
		break;
	case 24:
		wl = 0;
		break;
	case 32:
		wl = 4;
		break;
	default:
		return -EINVAL;
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC5(component, ES8328_DACCONTROL1,
				ES8328_DACCONTROL1_DACWL_MASK,
				wl << ES8328_DACCONTROL1_DACWL_SHIFT);

		es8328->playback_fs = FUNC2(params);
		FUNC1(component);
	} else
		FUNC5(component, ES8328_ADCCONTROL4,
				ES8328_ADCCONTROL4_ADCWL_MASK,
				wl << ES8328_ADCCONTROL4_ADCWL_SHIFT);

	return FUNC5(component, reg, ES8328_RATEMASK, ratio);
}