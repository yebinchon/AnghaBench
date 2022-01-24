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
struct wm8995_priv {int* aifclk; } ;
struct snd_soc_dai {int id; int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int WM8995_AIF1ADC_LRCLK ; 
 int WM8995_AIF1CLK_RATE_MASK ; 
 int WM8995_AIF1DAC_LRCLK ; 
 int WM8995_AIF1DAC_RATE_MASK ; 
 int WM8995_AIF1_BCLK ; 
 int WM8995_AIF1_BCLK_DIV_MASK ; 
 int WM8995_AIF1_BCLK_DIV_SHIFT ; 
 int WM8995_AIF1_CONTROL_1 ; 
 int WM8995_AIF1_RATE ; 
 int WM8995_AIF1_SR_MASK ; 
 int WM8995_AIF1_SR_SHIFT ; 
 int WM8995_AIF1_WL_MASK ; 
 int WM8995_AIF1_WL_SHIFT ; 
 int WM8995_AIF2ADC_LRCLK ; 
 int WM8995_AIF2DAC_LRCLK ; 
 int WM8995_AIF2_BCLK ; 
 int WM8995_AIF2_CONTROL_1 ; 
 int WM8995_AIF2_RATE ; 
 int FUNC1 (int) ; 
 int* bclk_divs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int* fs_ratios ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 struct wm8995_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int,int,int) ; 
 int FUNC8 (struct snd_pcm_hw_params*) ; 
 int* srs ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component;
	struct wm8995_priv *wm8995;
	int aif1_reg;
	int bclk_reg;
	int lrclk_reg;
	int rate_reg;
	int bclk_rate;
	int aif1;
	int lrclk, bclk;
	int i, rate_val, best, best_val, cur_val;

	component = dai->component;
	wm8995 = FUNC6(component);

	switch (dai->id) {
	case 0:
		aif1_reg = WM8995_AIF1_CONTROL_1;
		bclk_reg = WM8995_AIF1_BCLK;
		rate_reg = WM8995_AIF1_RATE;
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK /* ||
			wm8995->lrclk_shared[0] */) {
			lrclk_reg = WM8995_AIF1DAC_LRCLK;
		} else {
			lrclk_reg = WM8995_AIF1ADC_LRCLK;
			FUNC2(component->dev, "AIF1 using split LRCLK\n");
		}
		break;
	case 1:
		aif1_reg = WM8995_AIF2_CONTROL_1;
		bclk_reg = WM8995_AIF2_BCLK;
		rate_reg = WM8995_AIF2_RATE;
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK /* ||
		    wm8995->lrclk_shared[1] */) {
			lrclk_reg = WM8995_AIF2DAC_LRCLK;
		} else {
			lrclk_reg = WM8995_AIF2ADC_LRCLK;
			FUNC2(component->dev, "AIF2 using split LRCLK\n");
		}
		break;
	default:
		return -EINVAL;
	}

	bclk_rate = FUNC8(params);
	if (bclk_rate < 0)
		return bclk_rate;

	aif1 = 0;
	switch (FUNC5(params)) {
	case 16:
		break;
	case 20:
		aif1 |= (0x1 << WM8995_AIF1_WL_SHIFT);
		break;
	case 24:
		aif1 |= (0x2 << WM8995_AIF1_WL_SHIFT);
		break;
	case 32:
		aif1 |= (0x3 << WM8995_AIF1_WL_SHIFT);
		break;
	default:
		FUNC3(dai->dev, "Unsupported word length %u\n",
			FUNC5(params));
		return -EINVAL;
	}

	/* try to find a suitable sample rate */
	for (i = 0; i < FUNC0(srs); ++i)
		if (srs[i] == FUNC4(params))
			break;
	if (i == FUNC0(srs)) {
		FUNC3(dai->dev, "Sample rate %d is not supported\n",
			FUNC4(params));
		return -EINVAL;
	}
	rate_val = i << WM8995_AIF1_SR_SHIFT;

	FUNC2(dai->dev, "Sample rate is %dHz\n", srs[i]);
	FUNC2(dai->dev, "AIF%dCLK is %dHz, target BCLK %dHz\n",
		dai->id + 1, wm8995->aifclk[dai->id], bclk_rate);

	/* AIFCLK/fs ratio; look for a close match in either direction */
	best = 1;
	best_val = FUNC1((fs_ratios[1] * FUNC4(params))
		       - wm8995->aifclk[dai->id]);
	for (i = 2; i < FUNC0(fs_ratios); i++) {
		cur_val = FUNC1((fs_ratios[i] * FUNC4(params))
			      - wm8995->aifclk[dai->id]);
		if (cur_val >= best_val)
			continue;
		best = i;
		best_val = cur_val;
	}
	rate_val |= best;

	FUNC2(dai->dev, "Selected AIF%dCLK/fs = %d\n",
		dai->id + 1, fs_ratios[best]);

	/*
	 * We may not get quite the right frequency if using
	 * approximate clocks so look for the closest match that is
	 * higher than the target (we need to ensure that there enough
	 * BCLKs to clock out the samples).
	 */
	best = 0;
	bclk = 0;
	for (i = 0; i < FUNC0(bclk_divs); i++) {
		cur_val = (wm8995->aifclk[dai->id] * 10 / bclk_divs[i]) - bclk_rate;
		if (cur_val < 0) /* BCLK table is sorted */
			break;
		best = i;
	}
	bclk |= best << WM8995_AIF1_BCLK_DIV_SHIFT;

	bclk_rate = wm8995->aifclk[dai->id] * 10 / bclk_divs[best];
	FUNC2(dai->dev, "Using BCLK_DIV %d for actual BCLK %dHz\n",
		bclk_divs[best], bclk_rate);

	lrclk = bclk_rate / FUNC4(params);
	FUNC2(dai->dev, "Using LRCLK rate %d for actual LRCLK %dHz\n",
		lrclk, bclk_rate / lrclk);

	FUNC7(component, aif1_reg,
			    WM8995_AIF1_WL_MASK, aif1);
	FUNC7(component, bclk_reg,
			    WM8995_AIF1_BCLK_DIV_MASK, bclk);
	FUNC7(component, lrclk_reg,
			    WM8995_AIF1DAC_RATE_MASK, lrclk);
	FUNC7(component, rate_reg,
			    WM8995_AIF1_SR_MASK |
			    WM8995_AIF1CLK_RATE_MASK, rate_val);
	return 0;
}