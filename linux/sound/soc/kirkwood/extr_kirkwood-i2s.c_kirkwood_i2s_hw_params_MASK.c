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
typedef  int uint32_t ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct kirkwood_dma_data {int ctl_play; int ctl_rec; scalar_t__ io; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long KIRKWOOD_I2S_CTL_SIZE_16 ; 
 unsigned long KIRKWOOD_I2S_CTL_SIZE_24 ; 
 unsigned long KIRKWOOD_I2S_CTL_SIZE_32 ; 
 unsigned long KIRKWOOD_I2S_CTL_SIZE_MASK ; 
 unsigned int KIRKWOOD_I2S_PLAYCTL ; 
 unsigned int KIRKWOOD_I2S_RECCTL ; 
 int KIRKWOOD_PLAYCTL_ENABLE_MASK ; 
 int KIRKWOOD_PLAYCTL_I2S_EN ; 
 int KIRKWOOD_PLAYCTL_MONO_BOTH ; 
 int KIRKWOOD_PLAYCTL_MONO_MASK ; 
 int KIRKWOOD_PLAYCTL_MONO_OFF ; 
 int KIRKWOOD_PLAYCTL_SIZE_16_C ; 
 int KIRKWOOD_PLAYCTL_SIZE_24 ; 
 int KIRKWOOD_PLAYCTL_SIZE_32 ; 
 int KIRKWOOD_PLAYCTL_SIZE_MASK ; 
 int KIRKWOOD_PLAYCTL_SPDIF_EN ; 
 int KIRKWOOD_RECCTL_ENABLE_MASK ; 
 int KIRKWOOD_RECCTL_I2S_EN ; 
 int KIRKWOOD_RECCTL_SIZE_16_C ; 
 int KIRKWOOD_RECCTL_SIZE_24 ; 
 int KIRKWOOD_RECCTL_SIZE_32 ; 
 int KIRKWOOD_RECCTL_SIZE_MASK ; 
 int KIRKWOOD_RECCTL_SPDIF_EN ; 
#define  SNDRV_PCM_FORMAT_S16_LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dai*,struct kirkwood_dma_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 struct kirkwood_dma_data* FUNC5 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct kirkwood_dma_data *priv = FUNC5(dai);
	uint32_t ctl_play, ctl_rec;
	unsigned int i2s_reg;
	unsigned long i2s_value;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		i2s_reg = KIRKWOOD_I2S_PLAYCTL;
	} else {
		i2s_reg = KIRKWOOD_I2S_RECCTL;
	}

	FUNC0(dai, priv, FUNC3(params));

	i2s_value = FUNC4(priv->io+i2s_reg);
	i2s_value &= ~KIRKWOOD_I2S_CTL_SIZE_MASK;

	/*
	 * Size settings in play/rec i2s control regs and play/rec control
	 * regs must be the same.
	 */
	switch (FUNC2(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		i2s_value |= KIRKWOOD_I2S_CTL_SIZE_16;
		ctl_play = KIRKWOOD_PLAYCTL_SIZE_16_C |
			   KIRKWOOD_PLAYCTL_I2S_EN |
			   KIRKWOOD_PLAYCTL_SPDIF_EN;
		ctl_rec = KIRKWOOD_RECCTL_SIZE_16_C |
			  KIRKWOOD_RECCTL_I2S_EN |
			  KIRKWOOD_RECCTL_SPDIF_EN;
		break;
	/*
	 * doesn't work... S20_3LE != kirkwood 20bit format ?
	 *
	case SNDRV_PCM_FORMAT_S20_3LE:
		i2s_value |= KIRKWOOD_I2S_CTL_SIZE_20;
		ctl_play = KIRKWOOD_PLAYCTL_SIZE_20 |
			   KIRKWOOD_PLAYCTL_I2S_EN;
		ctl_rec = KIRKWOOD_RECCTL_SIZE_20 |
			  KIRKWOOD_RECCTL_I2S_EN;
		break;
	*/
	case SNDRV_PCM_FORMAT_S24_LE:
		i2s_value |= KIRKWOOD_I2S_CTL_SIZE_24;
		ctl_play = KIRKWOOD_PLAYCTL_SIZE_24 |
			   KIRKWOOD_PLAYCTL_I2S_EN |
			   KIRKWOOD_PLAYCTL_SPDIF_EN;
		ctl_rec = KIRKWOOD_RECCTL_SIZE_24 |
			  KIRKWOOD_RECCTL_I2S_EN |
			  KIRKWOOD_RECCTL_SPDIF_EN;
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		i2s_value |= KIRKWOOD_I2S_CTL_SIZE_32;
		ctl_play = KIRKWOOD_PLAYCTL_SIZE_32 |
			   KIRKWOOD_PLAYCTL_I2S_EN;
		ctl_rec = KIRKWOOD_RECCTL_SIZE_32 |
			  KIRKWOOD_RECCTL_I2S_EN;
		break;
	default:
		return -EINVAL;
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		if (FUNC1(params) == 1)
			ctl_play |= KIRKWOOD_PLAYCTL_MONO_BOTH;
		else
			ctl_play |= KIRKWOOD_PLAYCTL_MONO_OFF;

		priv->ctl_play &= ~(KIRKWOOD_PLAYCTL_MONO_MASK |
				    KIRKWOOD_PLAYCTL_ENABLE_MASK |
				    KIRKWOOD_PLAYCTL_SIZE_MASK);
		priv->ctl_play |= ctl_play;
	} else {
		priv->ctl_rec &= ~(KIRKWOOD_RECCTL_ENABLE_MASK |
				   KIRKWOOD_RECCTL_SIZE_MASK);
		priv->ctl_rec |= ctl_rec;
	}

	FUNC6(i2s_value, priv->io+i2s_reg);

	return 0;
}