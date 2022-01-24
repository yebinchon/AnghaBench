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
typedef  unsigned int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct img_i2s_in {int max_i2s_chan; int active_channels; } ;
typedef  int snd_pcm_format_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IMG_I2S_IN_CH_CTL ; 
 unsigned int IMG_I2S_IN_CH_CTL_16PACK_MASK ; 
 unsigned int IMG_I2S_IN_CH_CTL_FEN_MASK ; 
 unsigned int IMG_I2S_IN_CH_CTL_FMODE_MASK ; 
 unsigned int IMG_I2S_IN_CH_CTL_FW_MASK ; 
 unsigned int IMG_I2S_IN_CH_CTL_PACKH_MASK ; 
 unsigned int IMG_I2S_IN_CH_CTL_SW_MASK ; 
 int /*<<< orphan*/  IMG_I2S_IN_CTL ; 
 unsigned int IMG_I2S_IN_CTL_16PACK_MASK ; 
 unsigned int IMG_I2S_IN_CTL_ACTIVE_CHAN_MASK ; 
 unsigned int IMG_I2S_IN_CTL_ACTIVE_CH_SHIFT ; 
#define  SNDRV_PCM_FORMAT_S16_LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  FUNC0 (struct img_i2s_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct img_i2s_in*,int) ; 
 unsigned int FUNC2 (struct img_i2s_in*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct img_i2s_in*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct img_i2s_in*,unsigned int,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct img_i2s_in*) ; 
 unsigned int FUNC6 (struct img_i2s_in*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct img_i2s_in*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct snd_pcm_hw_params*) ; 
 int FUNC9 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC10 (struct snd_pcm_hw_params*) ; 
 struct img_i2s_in* FUNC11 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct img_i2s_in *i2s = FUNC11(dai);
	unsigned int rate, channels, i2s_channels, frame_size;
	unsigned int bclk_filter_enable, bclk_filter_value;
	int i, ret = 0;
	u32 reg, control_mask, chan_control_mask;
	u32 control_set = 0, chan_control_set = 0;
	snd_pcm_format_t format;

	rate = FUNC10(params);
	format = FUNC9(params);
	channels = FUNC8(params);
	i2s_channels = channels / 2;

	switch (format) {
	case SNDRV_PCM_FORMAT_S32_LE:
		frame_size = 64;
		chan_control_set |= IMG_I2S_IN_CH_CTL_SW_MASK;
		chan_control_set |= IMG_I2S_IN_CH_CTL_FW_MASK;
		chan_control_set |= IMG_I2S_IN_CH_CTL_PACKH_MASK;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		frame_size = 64;
		chan_control_set |= IMG_I2S_IN_CH_CTL_SW_MASK;
		chan_control_set |= IMG_I2S_IN_CH_CTL_FW_MASK;
		break;
	case SNDRV_PCM_FORMAT_S16_LE:
		frame_size = 32;
		control_set |= IMG_I2S_IN_CTL_16PACK_MASK;
		chan_control_set |= IMG_I2S_IN_CH_CTL_16PACK_MASK;
		break;
	default:
		return -EINVAL;
	}

	if ((channels < 2) ||
	    (channels > (i2s->max_i2s_chan * 2)) ||
	    (channels % 2))
		return -EINVAL;

	control_set |= ((i2s_channels - 1) << IMG_I2S_IN_CTL_ACTIVE_CH_SHIFT);

	ret = FUNC4(i2s, rate, frame_size,
			&bclk_filter_enable, &bclk_filter_value);
	if (ret < 0)
		return ret;

	if (bclk_filter_enable)
		chan_control_set |= IMG_I2S_IN_CH_CTL_FEN_MASK;

	if (bclk_filter_value)
		chan_control_set |= IMG_I2S_IN_CH_CTL_FMODE_MASK;

	control_mask = IMG_I2S_IN_CTL_16PACK_MASK |
		       IMG_I2S_IN_CTL_ACTIVE_CHAN_MASK;

	chan_control_mask = IMG_I2S_IN_CH_CTL_16PACK_MASK |
			    IMG_I2S_IN_CH_CTL_FEN_MASK |
			    IMG_I2S_IN_CH_CTL_FMODE_MASK |
			    IMG_I2S_IN_CH_CTL_SW_MASK |
			    IMG_I2S_IN_CH_CTL_FW_MASK |
			    IMG_I2S_IN_CH_CTL_PACKH_MASK;

	reg = FUNC6(i2s, IMG_I2S_IN_CTL);
	reg = (reg & ~control_mask) | control_set;
	FUNC7(i2s, reg, IMG_I2S_IN_CTL);

	for (i = 0; i < i2s->active_channels; i++)
		FUNC0(i2s, i);

	for (i = 0; i < i2s->max_i2s_chan; i++) {
		reg = FUNC2(i2s, i, IMG_I2S_IN_CH_CTL);
		reg = (reg & ~chan_control_mask) | chan_control_set;
		FUNC3(i2s, i, reg, IMG_I2S_IN_CH_CTL);
	}

	i2s->active_channels = i2s_channels;

	FUNC5(i2s);

	for (i = 0; i < i2s->active_channels; i++)
		FUNC1(i2s, i);

	return 0;
}