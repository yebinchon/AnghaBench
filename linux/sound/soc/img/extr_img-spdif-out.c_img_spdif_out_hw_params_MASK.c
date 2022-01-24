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
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct img_spdif_out {int /*<<< orphan*/  clk_ref; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ snd_pcm_format_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IMG_SPDIF_OUT_CTL ; 
 int /*<<< orphan*/  IMG_SPDIF_OUT_CTL_CLK_MASK ; 
 scalar_t__ SNDRV_PCM_FORMAT_S32_LE ; 
 long FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,long,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct img_spdif_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct img_spdif_out*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC8 (struct snd_pcm_hw_params*) ; 
 long FUNC9 (struct snd_pcm_hw_params*) ; 
 struct img_spdif_out* FUNC10 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct img_spdif_out *spdif = FUNC10(dai);
	unsigned int channels;
	long pre_div_a, pre_div_b, diff_a, diff_b, rate, clk_rate;
	u32 reg;
	snd_pcm_format_t format;

	rate = FUNC9(params);
	format = FUNC8(params);
	channels = FUNC7(params);

	FUNC4(spdif->dev, "hw_params rate %ld channels %u format %u\n",
			rate, channels, format);

	if (format != SNDRV_PCM_FORMAT_S32_LE)
		return -EINVAL;

	if (channels != 2)
		return -EINVAL;

	pre_div_a = FUNC2(spdif->clk_ref, rate * 256);
	if (pre_div_a < 0)
		return pre_div_a;
	pre_div_b = FUNC2(spdif->clk_ref, rate * 384);
	if (pre_div_b < 0)
		return pre_div_b;

	diff_a = FUNC0((pre_div_a / 256) - rate);
	diff_b = FUNC0((pre_div_b / 384) - rate);

	/* If diffs are equal, use lower clock rate */
	if (diff_a > diff_b)
		FUNC3(spdif->clk_ref, pre_div_b);
	else
		FUNC3(spdif->clk_ref, pre_div_a);

	/*
	 * Another driver (eg machine driver) may have rejected the above
	 * change. Get the current rate and set the register bit according to
	 * the new min diff
	 */
	clk_rate = FUNC1(spdif->clk_ref);

	diff_a = FUNC0((clk_rate / 256) - rate);
	diff_b = FUNC0((clk_rate / 384) - rate);

	reg = FUNC5(spdif, IMG_SPDIF_OUT_CTL);
	if (diff_a <= diff_b)
		reg &= ~IMG_SPDIF_OUT_CTL_CLK_MASK;
	else
		reg |= IMG_SPDIF_OUT_CTL_CLK_MASK;
	FUNC6(spdif, reg, IMG_SPDIF_OUT_CTL);

	return 0;
}