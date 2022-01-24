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
struct snd_soc_dai {scalar_t__ id; struct snd_soc_component* component; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct device {int dummy; } ;
struct cx2072x_priv {scalar_t__ mclk_rate; int bclk_ratio; int frame_size; int sample_size; unsigned int sample_rate; int en_aec_ref; int pll_changed; int i2spcm_changed; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2072X_ADC1_CONNECTION_SELECT_CONTROL ; 
 scalar_t__ CX2072X_DAI_DSP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cx2072x_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx2072x_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 unsigned int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cx2072x_priv* FUNC7 (struct snd_soc_component*) ; 
 int FUNC8 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *dai)
{
	struct snd_soc_component *codec = dai->component;
	struct cx2072x_priv *cx2072x = FUNC7(codec);
	struct device *dev = codec->dev;
	const unsigned int sample_rate = FUNC4(params);
	int sample_size, frame_size;

	/* Data sizes if not using TDM */
	sample_size = FUNC5(params);

	if (sample_size < 0)
		return sample_size;

	frame_size = FUNC8(params);
	if (frame_size < 0)
		return frame_size;

	if (cx2072x->mclk_rate == 0) {
		FUNC3(dev, "Master clock rate is not configured\n");
		return -EINVAL;
	}

	if (cx2072x->bclk_ratio)
		frame_size = cx2072x->bclk_ratio;

	switch (sample_rate) {
	case 48000:
	case 32000:
	case 24000:
	case 16000:
	case 96000:
	case 192000:
		break;

	default:
		FUNC3(dev, "Unsupported sample rate %d\n", sample_rate);
		return -EINVAL;
	}

	FUNC2(dev, "Sample size %d bits, frame = %d bits, rate = %d Hz\n",
		sample_size, frame_size, sample_rate);

	cx2072x->frame_size = frame_size;
	cx2072x->sample_size = sample_size;
	cx2072x->sample_rate = sample_rate;

	if (dai->id == CX2072X_DAI_DSP) {
		cx2072x->en_aec_ref = true;
		FUNC2(cx2072x->dev, "enables aec reference\n");
		FUNC6(cx2072x->regmap,
			     CX2072X_ADC1_CONNECTION_SELECT_CONTROL, 3);
	}

	if (cx2072x->pll_changed) {
		FUNC1(cx2072x);
		cx2072x->pll_changed = false;
	}

	if (cx2072x->i2spcm_changed) {
		FUNC0(cx2072x);
		cx2072x->i2spcm_changed = false;
	}

	return 0;
}