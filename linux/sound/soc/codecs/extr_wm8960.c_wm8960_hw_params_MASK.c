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
typedef  int u16 ;
struct wm8960_priv {int bclk; int* is_stream_in_use; scalar_t__ lrclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_3__ {scalar_t__ rate; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ SND_SOC_BIAS_ON ; 
 int /*<<< orphan*/  WM8960_ADDCTL3 ; 
 int /*<<< orphan*/  WM8960_IFACE1 ; 
 TYPE_1__* alc_rates ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC5 (struct snd_soc_component*) ; 
 struct wm8960_priv* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct snd_pcm_hw_params*) ; 
 int FUNC11 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm8960_priv *wm8960 = FUNC6(component);
	u16 iface = FUNC7(component, WM8960_IFACE1) & 0xfff3;
	bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	int i;

	wm8960->bclk = FUNC10(params);
	if (FUNC2(params) == 1)
		wm8960->bclk *= 2;

	/* bit size */
	switch (FUNC4(params)) {
	case 16:
		break;
	case 20:
		iface |= 0x0004;
		break;
	case 24:
		iface |= 0x0008;
		break;
	case 32:
		/* right justify mode does not support 32 word length */
		if ((iface & 0x3) != 0) {
			iface |= 0x000c;
			break;
		}
		/* fall through */
	default:
		FUNC1(component->dev, "unsupported width %d\n",
			FUNC4(params));
		return -EINVAL;
	}

	wm8960->lrclk = FUNC3(params);
	/* Update filters for the new rate */
	if (tx) {
		FUNC12(component);
	} else {
		for (i = 0; i < FUNC0(alc_rates); i++)
			if (alc_rates[i].rate == FUNC3(params))
				FUNC8(component,
						    WM8960_ADDCTL3, 0x7,
						    alc_rates[i].val);
	}

	/* set iface */
	FUNC9(component, WM8960_IFACE1, iface);

	wm8960->is_stream_in_use[tx] = true;

	if (FUNC5(component) == SND_SOC_BIAS_ON &&
	    !wm8960->is_stream_in_use[!tx])
		return FUNC11(component);

	return 0;
}