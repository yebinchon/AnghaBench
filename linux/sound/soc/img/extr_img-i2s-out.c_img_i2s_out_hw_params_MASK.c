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
struct img_i2s_out {int max_i2s_chan; unsigned int active_channels; int /*<<< orphan*/  clk_ref; } ;
typedef  scalar_t__ snd_pcm_format_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IMG_I2S_OUT_CTL ; 
 unsigned int IMG_I2S_OUT_CTL_ACTIVE_CHAN_MASK ; 
 unsigned int IMG_I2S_OUT_CTL_ACTIVE_CHAN_SHIFT ; 
 unsigned int IMG_I2S_OUT_CTL_CLK_MASK ; 
 scalar_t__ SNDRV_PCM_FORMAT_S32_LE ; 
 long FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (struct img_i2s_out*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct img_i2s_out*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct img_i2s_out*) ; 
 int /*<<< orphan*/  FUNC7 (struct img_i2s_out*) ; 
 unsigned int FUNC8 (struct img_i2s_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct img_i2s_out*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC11 (struct snd_pcm_hw_params*) ; 
 long FUNC12 (struct snd_pcm_hw_params*) ; 
 struct img_i2s_out* FUNC13 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct img_i2s_out *i2s = FUNC13(dai);
	unsigned int channels, i2s_channels;
	long pre_div_a, pre_div_b, diff_a, diff_b, rate, clk_rate;
	int i;
	u32 reg, control_mask, control_set = 0;
	snd_pcm_format_t format;

	rate = FUNC12(params);
	format = FUNC11(params);
	channels = FUNC10(params);
	i2s_channels = channels / 2;

	if (format != SNDRV_PCM_FORMAT_S32_LE)
		return -EINVAL;

	if ((channels < 2) ||
	    (channels > (i2s->max_i2s_chan * 2)) ||
	    (channels % 2))
		return -EINVAL;

	pre_div_a = FUNC2(i2s->clk_ref, rate * 256);
	if (pre_div_a < 0)
		return pre_div_a;
	pre_div_b = FUNC2(i2s->clk_ref, rate * 384);
	if (pre_div_b < 0)
		return pre_div_b;

	diff_a = FUNC0((pre_div_a / 256) - rate);
	diff_b = FUNC0((pre_div_b / 384) - rate);

	/* If diffs are equal, use lower clock rate */
	if (diff_a > diff_b)
		FUNC3(i2s->clk_ref, pre_div_b);
	else
		FUNC3(i2s->clk_ref, pre_div_a);

	/*
	 * Another driver (eg alsa machine driver) may have rejected the above
	 * change. Get the current rate and set the register bit according to
	 * the new minimum diff
	 */
	clk_rate = FUNC1(i2s->clk_ref);

	diff_a = FUNC0((clk_rate / 256) - rate);
	diff_b = FUNC0((clk_rate / 384) - rate);

	if (diff_a > diff_b)
		control_set |= IMG_I2S_OUT_CTL_CLK_MASK;

	control_set |= ((i2s_channels - 1) <<
		       IMG_I2S_OUT_CTL_ACTIVE_CHAN_SHIFT) &
		       IMG_I2S_OUT_CTL_ACTIVE_CHAN_MASK;

	control_mask = IMG_I2S_OUT_CTL_CLK_MASK |
		       IMG_I2S_OUT_CTL_ACTIVE_CHAN_MASK;

	FUNC6(i2s);

	reg = FUNC8(i2s, IMG_I2S_OUT_CTL);
	reg = (reg & ~control_mask) | control_set;
	FUNC9(i2s, reg, IMG_I2S_OUT_CTL);

	for (i = 0; i < i2s_channels; i++)
		FUNC5(i2s, i);

	for (; i < i2s->max_i2s_chan; i++)
		FUNC4(i2s, i);

	FUNC7(i2s);

	i2s->active_channels = i2s_channels;

	return 0;
}