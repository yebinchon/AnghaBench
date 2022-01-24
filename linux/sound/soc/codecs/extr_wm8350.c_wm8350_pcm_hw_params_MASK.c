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
typedef  int u16 ;
struct wm8350_data {struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int WM8350_AIF_WL_MASK ; 
 int /*<<< orphan*/  WM8350_AI_FORMATING ; 
 int /*<<< orphan*/  WM8350_DAC_MUTE_VOLUME ; 
 int /*<<< orphan*/  WM8350_DAC_SB_FILT ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 struct wm8350_data* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *codec_dai)
{
	struct snd_soc_component *component = codec_dai->component;
	struct wm8350_data *wm8350_data = FUNC2(component);
	struct wm8350 *wm8350 = wm8350_data->wm8350;
	u16 iface = FUNC3(component, WM8350_AI_FORMATING) &
	    ~WM8350_AIF_WL_MASK;

	/* bit size */
	switch (FUNC1(params)) {
	case 16:
		break;
	case 20:
		iface |= 0x1 << 10;
		break;
	case 24:
		iface |= 0x2 << 10;
		break;
	case 32:
		iface |= 0x3 << 10;
		break;
	}

	FUNC4(component, WM8350_AI_FORMATING, iface);

	/* The sloping stopband filter is recommended for use with
	 * lower sample rates to improve performance.
	 */
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		if (FUNC0(params) < 24000)
			FUNC6(wm8350, WM8350_DAC_MUTE_VOLUME,
					WM8350_DAC_SB_FILT);
		else
			FUNC5(wm8350, WM8350_DAC_MUTE_VOLUME,
					  WM8350_DAC_SB_FILT);
	}

	return 0;
}