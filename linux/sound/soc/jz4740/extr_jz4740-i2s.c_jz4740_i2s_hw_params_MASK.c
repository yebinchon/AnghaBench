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
typedef  unsigned int uint32_t ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct jz4740_i2s {scalar_t__ version; int /*<<< orphan*/  clk_i2s; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int I2SDIV_DV_MASK ; 
 int I2SDIV_DV_SHIFT ; 
 unsigned int I2SDIV_IDV_MASK ; 
 int I2SDIV_IDV_SHIFT ; 
 unsigned int JZ_AIC_CTRL_INPUT_SAMPLE_SIZE_MASK ; 
 unsigned int JZ_AIC_CTRL_INPUT_SAMPLE_SIZE_OFFSET ; 
 unsigned int JZ_AIC_CTRL_MONO_TO_STEREO ; 
 unsigned int JZ_AIC_CTRL_OUTPUT_SAMPLE_SIZE_MASK ; 
 unsigned int JZ_AIC_CTRL_OUTPUT_SAMPLE_SIZE_OFFSET ; 
 scalar_t__ JZ_I2S_JZ4780 ; 
 int /*<<< orphan*/  JZ_REG_AIC_CLK_DIV ; 
 int /*<<< orphan*/  JZ_REG_AIC_CTRL ; 
#define  SNDRV_PCM_FORMAT_S16 129 
#define  SNDRV_PCM_FORMAT_S8 128 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct jz4740_i2s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4740_i2s*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 struct jz4740_i2s* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct jz4740_i2s *i2s = FUNC6(dai);
	unsigned int sample_size;
	uint32_t ctrl, div_reg;
	int div;

	ctrl = FUNC1(i2s, JZ_REG_AIC_CTRL);

	div_reg = FUNC1(i2s, JZ_REG_AIC_CLK_DIV);
	div = FUNC0(i2s->clk_i2s) / (64 * FUNC5(params));

	switch (FUNC4(params)) {
	case SNDRV_PCM_FORMAT_S8:
		sample_size = 0;
		break;
	case SNDRV_PCM_FORMAT_S16:
		sample_size = 1;
		break;
	default:
		return -EINVAL;
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		ctrl &= ~JZ_AIC_CTRL_OUTPUT_SAMPLE_SIZE_MASK;
		ctrl |= sample_size << JZ_AIC_CTRL_OUTPUT_SAMPLE_SIZE_OFFSET;
		if (FUNC3(params) == 1)
			ctrl |= JZ_AIC_CTRL_MONO_TO_STEREO;
		else
			ctrl &= ~JZ_AIC_CTRL_MONO_TO_STEREO;

		div_reg &= ~I2SDIV_DV_MASK;
		div_reg |= (div - 1) << I2SDIV_DV_SHIFT;
	} else {
		ctrl &= ~JZ_AIC_CTRL_INPUT_SAMPLE_SIZE_MASK;
		ctrl |= sample_size << JZ_AIC_CTRL_INPUT_SAMPLE_SIZE_OFFSET;

		if (i2s->version >= JZ_I2S_JZ4780) {
			div_reg &= ~I2SDIV_IDV_MASK;
			div_reg |= (div - 1) << I2SDIV_IDV_SHIFT;
		} else {
			div_reg &= ~I2SDIV_DV_MASK;
			div_reg |= (div - 1) << I2SDIV_DV_SHIFT;
		}
	}

	FUNC2(i2s, JZ_REG_AIC_CTRL, ctrl);
	FUNC2(i2s, JZ_REG_AIC_CLK_DIV, div_reg);

	return 0;
}