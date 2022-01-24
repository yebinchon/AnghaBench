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
struct wl1273_priv {unsigned int mode; int channels; struct wl1273_core* core; } ;
struct wl1273_core {int dummy; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; int /*<<< orphan*/  component; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {unsigned int min; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_SAMPLE_BITS ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 unsigned int WL1273_MODE_BT ; 
 unsigned int WL1273_MODE_FM_RX ; 
 unsigned int WL1273_MODE_FM_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct wl1273_priv* FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct wl1273_core*,int) ; 
 unsigned int FUNC8 (struct wl1273_core*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct wl1273_priv *wl1273 = FUNC6(dai->component);
	struct wl1273_core *core = wl1273->core;
	unsigned int rate, width, r;

	if (FUNC4(params) != 16) {
		FUNC0(dai->dev, "%d bits/sample not supported\n",
			FUNC4(params));
		return -EINVAL;
	}

	rate = FUNC3(params);
	width =  FUNC1(params, SNDRV_PCM_HW_PARAM_SAMPLE_BITS)->min;

	if (wl1273->mode == WL1273_MODE_BT) {
		if (rate != 8000) {
			FUNC5("Rate %d not supported.\n", FUNC3(params));
			return -EINVAL;
		}

		if (FUNC2(params) != 1) {
			FUNC5("Only mono supported.\n");
			return -EINVAL;
		}

		return 0;
	}

	if (wl1273->mode == WL1273_MODE_FM_TX &&
	    substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
		FUNC5("Only playback supported with TX.\n");
		return -EINVAL;
	}

	if (wl1273->mode == WL1273_MODE_FM_RX  &&
	    substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC5("Only capture supported with RX.\n");
		return -EINVAL;
	}

	if (wl1273->mode != WL1273_MODE_FM_RX  &&
	    wl1273->mode != WL1273_MODE_FM_TX) {
		FUNC5("Unexpected mode: %d.\n", wl1273->mode);
		return -EINVAL;
	}

	r = FUNC8(core, rate, width);
	if (r)
		return r;

	wl1273->channels = FUNC2(params);
	r = FUNC7(core, wl1273->channels);
	if (r)
		return r;

	return 0;
}