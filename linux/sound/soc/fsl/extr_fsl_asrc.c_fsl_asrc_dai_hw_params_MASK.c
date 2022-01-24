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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct fsl_asrc_pair {int /*<<< orphan*/  index; struct asrc_config* config; } ;
struct fsl_asrc {int asrc_width; unsigned int asrc_rate; } ;
struct asrc_config {unsigned int channel_num; int input_word_width; int output_word_width; unsigned int input_sample_rate; unsigned int output_sample_rate; int /*<<< orphan*/  outclk; int /*<<< orphan*/  inclk; int /*<<< orphan*/  pair; } ;

/* Variables and functions */
 int ASRC_WIDTH_16_BIT ; 
 int ASRC_WIDTH_24_BIT ; 
 int /*<<< orphan*/  INCLK_NONE ; 
 int /*<<< orphan*/  OUTCLK_ASRCK1_CLK ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct fsl_asrc_pair*) ; 
 int FUNC2 (unsigned int,struct fsl_asrc_pair*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 struct fsl_asrc* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *params,
				  struct snd_soc_dai *dai)
{
	struct fsl_asrc *asrc_priv = FUNC6(dai);
	int width = FUNC5(params);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct fsl_asrc_pair *pair = runtime->private_data;
	unsigned int channels = FUNC3(params);
	unsigned int rate = FUNC4(params);
	struct asrc_config config;
	int word_width, ret;

	ret = FUNC2(channels, pair);
	if (ret) {
		FUNC0(dai->dev, "fail to request asrc pair\n");
		return ret;
	}

	pair->config = &config;

	if (width == 16)
		width = ASRC_WIDTH_16_BIT;
	else
		width = ASRC_WIDTH_24_BIT;

	if (asrc_priv->asrc_width == 16)
		word_width = ASRC_WIDTH_16_BIT;
	else
		word_width = ASRC_WIDTH_24_BIT;

	config.pair = pair->index;
	config.channel_num = channels;
	config.inclk = INCLK_NONE;
	config.outclk = OUTCLK_ASRCK1_CLK;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		config.input_word_width   = width;
		config.output_word_width  = word_width;
		config.input_sample_rate  = rate;
		config.output_sample_rate = asrc_priv->asrc_rate;
	} else {
		config.input_word_width   = word_width;
		config.output_word_width  = width;
		config.input_sample_rate  = asrc_priv->asrc_rate;
		config.output_sample_rate = rate;
	}

	ret = FUNC1(pair);
	if (ret) {
		FUNC0(dai->dev, "fail to config asrc pair\n");
		return ret;
	}

	return 0;
}