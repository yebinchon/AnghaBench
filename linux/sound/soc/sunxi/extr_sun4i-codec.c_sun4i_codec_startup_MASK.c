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
struct sun4i_codec {int /*<<< orphan*/  clk_module; int /*<<< orphan*/  regmap; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  SUN4I_CODEC_DAC_FIFOC ; 
 int SUN4I_CODEC_DAC_FIFOC_DRQ_CLR_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sun4i_codec* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun4i_codec_constraints ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct sun4i_codec *scodec = FUNC3(rtd->card);

	FUNC2(substream->runtime, 0,
				SNDRV_PCM_HW_PARAM_RATE, &sun4i_codec_constraints);

	/*
	 * Stop issuing DRQ when we have room for less than 16 samples
	 * in our TX FIFO
	 */
	FUNC1(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
			   3 << SUN4I_CODEC_DAC_FIFOC_DRQ_CLR_CNT,
			   3 << SUN4I_CODEC_DAC_FIFOC_DRQ_CLR_CNT);

	return FUNC0(scodec->clk_module);
}