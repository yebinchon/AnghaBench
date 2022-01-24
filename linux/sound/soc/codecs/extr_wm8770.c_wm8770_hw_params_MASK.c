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
struct wm8770_priv {int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int stream; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
#define  SNDRV_PCM_STREAM_CAPTURE 129 
#define  SNDRV_PCM_STREAM_PLAYBACK 128 
 int /*<<< orphan*/  WM8770_IFACECTRL ; 
 int /*<<< orphan*/  WM8770_MSTRCTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int* mclk_ratios ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 struct wm8770_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component;
	struct wm8770_priv *wm8770;
	int i;
	int iface;
	int shift;
	int ratio;

	component = dai->component;
	wm8770 = FUNC5(component);

	iface = 0;
	switch (FUNC4(params)) {
	case 16:
		break;
	case 20:
		iface |= 0x10;
		break;
	case 24:
		iface |= 0x20;
		break;
	case 32:
		iface |= 0x30;
		break;
	}

	switch (substream->stream) {
	case SNDRV_PCM_STREAM_PLAYBACK:
		i = 0;
		shift = 4;
		break;
	case SNDRV_PCM_STREAM_CAPTURE:
		i = 2;
		shift = 0;
		break;
	default:
		return -EINVAL;
	}

	/* Only need to set MCLK/LRCLK ratio if we're master */
	if (FUNC6(component, WM8770_MSTRCTRL) & 0x100) {
		for (; i < FUNC0(mclk_ratios); ++i) {
			ratio = wm8770->sysclk / FUNC3(params);
			if (ratio == mclk_ratios[i])
				break;
		}

		if (i == FUNC0(mclk_ratios)) {
			FUNC2(component->dev,
				"Unable to configure MCLK ratio %d/%d\n",
				wm8770->sysclk, FUNC3(params));
			return -EINVAL;
		}

		FUNC1(component->dev, "MCLK is %dfs\n", mclk_ratios[i]);

		FUNC7(component, WM8770_MSTRCTRL, 0x7 << shift,
				    i << shift);
	}

	FUNC7(component, WM8770_IFACECTRL, 0x30, iface);

	return 0;
}