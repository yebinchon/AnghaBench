#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wm8962_priv {int bclk; int lrclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_3__ {int rate; int reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 scalar_t__ SND_SOC_BIAS_ON ; 
 int /*<<< orphan*/  WM8962_ADDITIONAL_CONTROL_3 ; 
 int /*<<< orphan*/  WM8962_AUDIO_INTERFACE_0 ; 
 int WM8962_SAMPLE_RATE_INT_MODE ; 
 int WM8962_SAMPLE_RATE_MASK ; 
 int WM8962_WL_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC6 (struct snd_soc_component*) ; 
 struct wm8962_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (struct snd_pcm_hw_params*) ; 
 TYPE_1__* sr_vals ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm8962_priv *wm8962 = FUNC7(component);
	int i;
	int aif0 = 0;
	int adctl3 = 0;

	wm8962->bclk = FUNC9(params);
	if (FUNC3(params) == 1)
		wm8962->bclk *= 2;

	wm8962->lrclk = FUNC4(params);

	for (i = 0; i < FUNC0(sr_vals); i++) {
		if (sr_vals[i].rate == wm8962->lrclk) {
			adctl3 |= sr_vals[i].reg;
			break;
		}
	}
	if (i == FUNC0(sr_vals)) {
		FUNC2(component->dev, "Unsupported rate %dHz\n", wm8962->lrclk);
		return -EINVAL;
	}

	if (wm8962->lrclk % 8000 == 0)
		adctl3 |= WM8962_SAMPLE_RATE_INT_MODE;

	switch (FUNC5(params)) {
	case 16:
		break;
	case 20:
		aif0 |= 0x4;
		break;
	case 24:
		aif0 |= 0x8;
		break;
	case 32:
		aif0 |= 0xc;
		break;
	default:
		return -EINVAL;
	}

	FUNC8(component, WM8962_AUDIO_INTERFACE_0,
			    WM8962_WL_MASK, aif0);
	FUNC8(component, WM8962_ADDITIONAL_CONTROL_3,
			    WM8962_SAMPLE_RATE_INT_MODE |
			    WM8962_SAMPLE_RATE_MASK, adctl3);

	FUNC1(component->dev, "hw_params set BCLK %dHz LRCLK %dHz\n",
		wm8962->bclk, wm8962->lrclk);

	if (FUNC6(component) == SND_SOC_BIAS_ON)
		FUNC10(component);

	return 0;
}