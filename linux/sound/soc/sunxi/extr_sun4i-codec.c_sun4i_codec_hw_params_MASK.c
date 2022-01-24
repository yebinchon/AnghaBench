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
struct sun4i_codec {int /*<<< orphan*/  clk_module; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 struct sun4i_codec* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned long FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct sun4i_codec*,struct snd_pcm_hw_params*,int) ; 
 int FUNC5 (struct sun4i_codec*,struct snd_pcm_hw_params*,int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct sun4i_codec *scodec = FUNC1(rtd->card);
	unsigned long clk_freq;
	int ret, hwrate;

	clk_freq = FUNC3(params);
	if (!clk_freq)
		return -EINVAL;

	ret = FUNC0(scodec->clk_module, clk_freq);
	if (ret)
		return ret;

	hwrate = FUNC2(params);
	if (hwrate < 0)
		return hwrate;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		return FUNC5(scodec, params,
						      hwrate);

	return FUNC4(scodec, params,
					     hwrate);
}