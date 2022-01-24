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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ep93xx_i2s_info {int /*<<< orphan*/  sclk; int /*<<< orphan*/  lrclk; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EP93XX_I2S_RXWRDLEN ; 
 int /*<<< orphan*/  EP93XX_I2S_TXWRDLEN ; 
 unsigned int EP93XX_I2S_WRDLEN_16 ; 
 unsigned int EP93XX_I2S_WRDLEN_24 ; 
 unsigned int EP93XX_I2S_WRDLEN_32 ; 
#define  SNDRV_PCM_FORMAT_S16_LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ep93xx_i2s_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ep93xx_i2s_info*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC5 (struct snd_pcm_hw_params*) ; 
 struct ep93xx_i2s_info* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct ep93xx_i2s_info *info = FUNC6(dai);
	unsigned word_len, div, sdiv, lrdiv;
	int err;

	switch (FUNC4(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		word_len = EP93XX_I2S_WRDLEN_16;
		break;

	case SNDRV_PCM_FORMAT_S24_LE:
		word_len = EP93XX_I2S_WRDLEN_24;
		break;

	case SNDRV_PCM_FORMAT_S32_LE:
		word_len = EP93XX_I2S_WRDLEN_32;
		break;

	default:
		return -EINVAL;
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		FUNC3(info, EP93XX_I2S_TXWRDLEN, word_len);
	else
		FUNC3(info, EP93XX_I2S_RXWRDLEN, word_len);

	/*
	 * EP93xx I2S module can be setup so SCLK / LRCLK value can be
	 * 32, 64, 128. MCLK / SCLK value can be 2 and 4.
	 * We set LRCLK equal to `rate' and minimum SCLK / LRCLK 
	 * value is 64, because our sample size is 32 bit * 2 channels.
	 * I2S standard permits us to transmit more bits than
	 * the codec uses.
	 */
	div = FUNC0(info->mclk) / FUNC5(params);
	sdiv = 4;
	if (div > (256 + 512) / 2) {
		lrdiv = 128;
	} else {
		lrdiv = 64;
		if (div < (128 + 256) / 2)
			sdiv = 2;
	}

	err = FUNC1(info->sclk, FUNC0(info->mclk) / sdiv);
	if (err)
		return err;

	err = FUNC1(info->lrclk, FUNC0(info->sclk) / lrdiv);
	if (err)
		return err;

	FUNC2(info, substream->stream);
	return 0;
}