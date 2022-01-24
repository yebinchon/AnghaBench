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
struct wm5100_priv {int* aif_async; int sysclk; int asyncclk; scalar_t__* aif_symmetric; } ;
struct snd_soc_dai {size_t id; TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int base; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int WM5100_AIF1RX_BCPF_MASK ; 
 int WM5100_AIF1RX_SLOT_LEN_MASK ; 
 int WM5100_AIF1RX_WL_MASK ; 
 int WM5100_AIF1TX_BCPF_MASK ; 
 int WM5100_AIF1TX_SLOT_LEN_MASK ; 
 int WM5100_AIF1TX_WL_MASK ; 
 int WM5100_AIF1TX_WL_SHIFT ; 
 int WM5100_AIF1_BCLK_FREQ_MASK ; 
 int WM5100_AIF1_RATE_MASK ; 
 int WM5100_ASYNC_SAMPLE_RATE_MASK ; 
 int WM5100_CLOCKING_8 ; 
 int WM5100_NUM_BCLK_RATES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 struct wm5100_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int,int,int) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 
 int FUNC8 (struct snd_pcm_hw_params*) ; 
 int FUNC9 (struct snd_soc_component*,int) ; 
 int* wm5100_bclk_rates_cd ; 
 int* wm5100_bclk_rates_dat ; 
 int* wm5100_sr_code ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm5100_priv *wm5100 = FUNC5(component);
	bool async = wm5100->aif_async[dai->id];
	int i, base, bclk, aif_rate, lrclk, wl, fl, sr;
	int *bclk_rates;

	base = dai->driver->base;

	/* Data sizes if not using TDM */
	wl = FUNC4(params);
	if (wl < 0)
		return wl;
	fl = FUNC8(params);
	if (fl < 0)
		return fl;

	FUNC1(component->dev, "Word length %d bits, frame length %d bits\n",
		wl, fl);

	/* Target BCLK rate */
	bclk = FUNC7(params);
	if (bclk < 0)
		return bclk;

	/* Root for BCLK depends on SYS/ASYNCCLK */
	if (!async) {
		aif_rate = wm5100->sysclk;
		sr = FUNC9(component, FUNC3(params));
		if (sr < 0)
			return sr;
	} else {
		/* If we're in ASYNCCLK set the ASYNC sample rate */
		aif_rate = wm5100->asyncclk;
		sr = 3;

		for (i = 0; i < FUNC0(wm5100_sr_code); i++)
			if (FUNC3(params) == wm5100_sr_code[i])
				break;
		if (i == FUNC0(wm5100_sr_code)) {
			FUNC2(component->dev, "Invalid rate %dHzn",
				FUNC3(params));
			return -EINVAL;
		}

		/* TODO: We should really check for symmetry */
		FUNC6(component, WM5100_CLOCKING_8,
				    WM5100_ASYNC_SAMPLE_RATE_MASK, i);
	}

	if (!aif_rate) {
		FUNC2(component->dev, "%s has no rate set\n",
			async ? "ASYNCCLK" : "SYSCLK");
		return -EINVAL;
	}

	FUNC1(component->dev, "Target BCLK is %dHz, using %dHz %s\n",
		bclk, aif_rate, async ? "ASYNCCLK" : "SYSCLK");

	if (aif_rate % 4000)
		bclk_rates = wm5100_bclk_rates_cd;
	else
		bclk_rates = wm5100_bclk_rates_dat;

	for (i = 0; i < WM5100_NUM_BCLK_RATES; i++)
		if (bclk_rates[i] >= bclk && (bclk_rates[i] % bclk == 0))
			break;
	if (i == WM5100_NUM_BCLK_RATES) {
		FUNC2(component->dev,
			"No valid BCLK for %dHz found from %dHz %s\n",
			bclk, aif_rate, async ? "ASYNCCLK" : "SYSCLK");
		return -EINVAL;
	}

	bclk = i;
	FUNC1(component->dev, "Setting %dHz BCLK\n", bclk_rates[bclk]);
	FUNC6(component, base + 1, WM5100_AIF1_BCLK_FREQ_MASK, bclk);

	lrclk = bclk_rates[bclk] / FUNC3(params);
	FUNC1(component->dev, "Setting %dHz LRCLK\n", bclk_rates[bclk] / lrclk);
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK ||
	    wm5100->aif_symmetric[dai->id])
		FUNC6(component, base + 7,
				    WM5100_AIF1RX_BCPF_MASK, lrclk);
	else
		FUNC6(component, base + 6,
				    WM5100_AIF1TX_BCPF_MASK, lrclk);

	i = (wl << WM5100_AIF1TX_WL_SHIFT) | fl;
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		FUNC6(component, base + 9,
				    WM5100_AIF1RX_WL_MASK |
				    WM5100_AIF1RX_SLOT_LEN_MASK, i);
	else
		FUNC6(component, base + 8,
				    WM5100_AIF1TX_WL_MASK |
				    WM5100_AIF1TX_SLOT_LEN_MASK, i);

	FUNC6(component, base + 4, WM5100_AIF1_RATE_MASK, sr);

	return 0;
}