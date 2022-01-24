#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wm8904_priv {int fs; int bclk; int sysclk_rate; scalar_t__ tdm_slots; int /*<<< orphan*/  tdm_width; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_5__ {int ratio; unsigned int clk_sys_rate; int rate; unsigned int sample_rate; int div; unsigned int bclk_div; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int INT_MAX ; 
 unsigned int WM8904_AIF_WL_MASK ; 
 int /*<<< orphan*/  WM8904_AUDIO_INTERFACE_1 ; 
 int /*<<< orphan*/  WM8904_AUDIO_INTERFACE_2 ; 
 int /*<<< orphan*/  WM8904_AUDIO_INTERFACE_3 ; 
 unsigned int WM8904_BCLK_DIV_MASK ; 
 unsigned int WM8904_CLK_SYS_RATE_MASK ; 
 unsigned int WM8904_CLK_SYS_RATE_SHIFT ; 
 int /*<<< orphan*/  WM8904_CLOCK_RATES_1 ; 
 int /*<<< orphan*/  WM8904_DAC_DIGITAL_1 ; 
 unsigned int WM8904_DAC_SB_FILT ; 
 unsigned int WM8904_LRCLK_RATE_MASK ; 
 unsigned int WM8904_SAMPLE_RATE_MASK ; 
 unsigned int WM8904_SAMPLE_RATE_SHIFT ; 
 int FUNC1 (int) ; 
 TYPE_1__* bclk_divs ; 
 TYPE_1__* clk_sys_rates ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 TYPE_1__* sample_rates ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 struct wm8904_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC8 (struct snd_pcm_hw_params*) ; 
 int FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm8904_priv *wm8904 = FUNC6(component);
	int ret, i, best, best_val, cur_val;
	unsigned int aif1 = 0;
	unsigned int aif2 = 0;
	unsigned int aif3 = 0;
	unsigned int clock1 = 0;
	unsigned int dac_digital1 = 0;

	/* What BCLK do we need? */
	wm8904->fs = FUNC3(params);
	if (wm8904->tdm_slots) {
		FUNC2(component->dev, "Configuring for %d %d bit TDM slots\n",
			wm8904->tdm_slots, wm8904->tdm_width);
		wm8904->bclk = FUNC5(wm8904->fs,
						 wm8904->tdm_width, 2,
						 wm8904->tdm_slots);
	} else {
		wm8904->bclk = FUNC8(params);
	}

	switch (FUNC4(params)) {
	case 16:
		break;
	case 20:
		aif1 |= 0x40;
		break;
	case 24:
		aif1 |= 0x80;
		break;
	case 32:
		aif1 |= 0xc0;
		break;
	default:
		return -EINVAL;
	}


	FUNC2(component->dev, "Target BCLK is %dHz\n", wm8904->bclk);

	ret = FUNC9(component);
	if (ret != 0)
		return ret;

	/* Select nearest CLK_SYS_RATE */
	best = 0;
	best_val = FUNC1((wm8904->sysclk_rate / clk_sys_rates[0].ratio)
		       - wm8904->fs);
	for (i = 1; i < FUNC0(clk_sys_rates); i++) {
		cur_val = FUNC1((wm8904->sysclk_rate /
			       clk_sys_rates[i].ratio) - wm8904->fs);
		if (cur_val < best_val) {
			best = i;
			best_val = cur_val;
		}
	}
	FUNC2(component->dev, "Selected CLK_SYS_RATIO of %d\n",
		clk_sys_rates[best].ratio);
	clock1 |= (clk_sys_rates[best].clk_sys_rate
		   << WM8904_CLK_SYS_RATE_SHIFT);

	/* SAMPLE_RATE */
	best = 0;
	best_val = FUNC1(wm8904->fs - sample_rates[0].rate);
	for (i = 1; i < FUNC0(sample_rates); i++) {
		/* Closest match */
		cur_val = FUNC1(wm8904->fs - sample_rates[i].rate);
		if (cur_val < best_val) {
			best = i;
			best_val = cur_val;
		}
	}
	FUNC2(component->dev, "Selected SAMPLE_RATE of %dHz\n",
		sample_rates[best].rate);
	clock1 |= (sample_rates[best].sample_rate
		   << WM8904_SAMPLE_RATE_SHIFT);

	/* Enable sloping stopband filter for low sample rates */
	if (wm8904->fs <= 24000)
		dac_digital1 |= WM8904_DAC_SB_FILT;

	/* BCLK_DIV */
	best = 0;
	best_val = INT_MAX;
	for (i = 0; i < FUNC0(bclk_divs); i++) {
		cur_val = ((wm8904->sysclk_rate * 10) / bclk_divs[i].div)
			- wm8904->bclk;
		if (cur_val < 0) /* Table is sorted */
			break;
		if (cur_val < best_val) {
			best = i;
			best_val = cur_val;
		}
	}
	wm8904->bclk = (wm8904->sysclk_rate * 10) / bclk_divs[best].div;
	FUNC2(component->dev, "Selected BCLK_DIV of %d for %dHz BCLK\n",
		bclk_divs[best].div, wm8904->bclk);
	aif2 |= bclk_divs[best].bclk_div;

	/* LRCLK is a simple fraction of BCLK */
	FUNC2(component->dev, "LRCLK_RATE is %d\n", wm8904->bclk / wm8904->fs);
	aif3 |= wm8904->bclk / wm8904->fs;

	/* Apply the settings */
	FUNC7(component, WM8904_DAC_DIGITAL_1,
			    WM8904_DAC_SB_FILT, dac_digital1);
	FUNC7(component, WM8904_AUDIO_INTERFACE_1,
			    WM8904_AIF_WL_MASK, aif1);
	FUNC7(component, WM8904_AUDIO_INTERFACE_2,
			    WM8904_BCLK_DIV_MASK, aif2);
	FUNC7(component, WM8904_AUDIO_INTERFACE_3,
			    WM8904_LRCLK_RATE_MASK, aif3);
	FUNC7(component, WM8904_CLOCK_RATES_1,
			    WM8904_SAMPLE_RATE_MASK |
			    WM8904_CLK_SYS_RATE_MASK, clock1);

	/* Update filters for the new settings */
	FUNC11(component);
	FUNC10(component);

	return 0;
}