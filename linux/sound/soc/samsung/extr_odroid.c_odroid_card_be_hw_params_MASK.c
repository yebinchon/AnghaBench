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
struct snd_soc_pcm_runtime {int num_codecs; struct snd_soc_dai** codec_dais; int /*<<< orphan*/  card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct odroid_priv {unsigned int be_sample_rate; int /*<<< orphan*/  lock; int /*<<< orphan*/  sclk_i2s; int /*<<< orphan*/  clk_i2s_bus; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct snd_pcm_hw_params*) ; 
 struct odroid_priv* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				      struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct odroid_priv *priv = FUNC2(rtd->card);
	unsigned int pll_freq, rclk_freq, rfs;
	unsigned long flags;
	int ret;

	switch (FUNC1(params)) {
	case 64000:
		pll_freq = 196608001U;
		rfs = 384;
		break;
	case 44100:
	case 88200:
		pll_freq = 180633609U;
		rfs = 512;
		break;
	case 32000:
	case 48000:
	case 96000:
		pll_freq = 196608001U;
		rfs = 512;
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC0(priv->clk_i2s_bus, pll_freq / 2 + 1);
	if (ret < 0)
		return ret;

	/*
	 *  We add 2 to the rclk_freq value in order to avoid too low clock
	 *  frequency values due to the EPLL output frequency not being exact
	 *  multiple of the audio sampling rate.
	 */
	rclk_freq = FUNC1(params) * rfs + 2;

	ret = FUNC0(priv->sclk_i2s, rclk_freq);
	if (ret < 0)
		return ret;

	if (rtd->num_codecs > 1) {
		struct snd_soc_dai *codec_dai = rtd->codec_dais[1];

		ret = FUNC3(codec_dai, 0, rclk_freq,
					     SND_SOC_CLOCK_IN);
		if (ret < 0)
			return ret;
	}

	FUNC4(&priv->lock, flags);
	priv->be_sample_rate = FUNC1(params);
	FUNC5(&priv->lock, flags);

	return 0;
}