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
struct wm8776_priv {int* sysclk; } ;
struct snd_soc_dai {TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int WM8776_ADCIFCTRL ; 
 int WM8776_DACIFCTRL ; 
#define  WM8776_DAI_ADC 129 
#define  WM8776_DAI_DAC 128 
 int WM8776_MSTRCTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int* mclk_ratios ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 struct wm8776_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int,int,int) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm8776_priv *wm8776 = FUNC5(component);
	int iface_reg, iface;
	int ratio_shift, master;
	int i;

	switch (dai->driver->id) {
	case WM8776_DAI_DAC:
		iface_reg = WM8776_DACIFCTRL;
		master = 0x80;
		ratio_shift = 4;
		break;
	case WM8776_DAI_ADC:
		iface_reg = WM8776_ADCIFCTRL;
		master = 0x100;
		ratio_shift = 0;
		break;
	default:
		return -EINVAL;
	}

	/* Set word length */
	switch (FUNC4(params)) {
	case 16:
		iface = 0;
		break;
	case 20:
		iface = 0x10;
		break;
	case 24:
		iface = 0x20;
		break;
	case 32:
		iface = 0x30;
		break;
	default:
		FUNC2(component->dev, "Unsupported sample size: %i\n",
			FUNC4(params));
		return -EINVAL;
	}

	/* Only need to set MCLK/LRCLK ratio if we're master */
	if (FUNC6(component, WM8776_MSTRCTRL) & master) {
		for (i = 0; i < FUNC0(mclk_ratios); i++) {
			if (wm8776->sysclk[dai->driver->id] / FUNC3(params)
			    == mclk_ratios[i])
				break;
		}

		if (i == FUNC0(mclk_ratios)) {
			FUNC2(component->dev,
				"Unable to configure MCLK ratio %d/%d\n",
				wm8776->sysclk[dai->driver->id], FUNC3(params));
			return -EINVAL;
		}

		FUNC1(component->dev, "MCLK is %dfs\n", mclk_ratios[i]);

		FUNC7(component, WM8776_MSTRCTRL,
				    0x7 << ratio_shift, i << ratio_shift);
	} else {
		FUNC1(component->dev, "DAI in slave mode\n");
	}

	FUNC7(component, iface_reg, 0x30, iface);

	return 0;
}