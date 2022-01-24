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
struct ssp_priv {scalar_t__ extclk; struct ssp_device* ssp; } ;
struct ssp_device {scalar_t__ clk; } ;
struct snd_soc_dai {int /*<<< orphan*/  active; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_dmaengine_dai_dma_data {char* chan_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct snd_dmaengine_dai_dma_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssp_device*) ; 
 struct ssp_priv* FUNC3 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dai*,struct snd_pcm_substream*,struct snd_dmaengine_dai_dma_data*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			   struct snd_soc_dai *cpu_dai)
{
	struct ssp_priv *priv = FUNC3(cpu_dai);
	struct ssp_device *ssp = priv->ssp;
	struct snd_dmaengine_dai_dma_data *dma;
	int ret = 0;

	if (!cpu_dai->active) {
		FUNC0(ssp->clk);
		FUNC2(ssp);
	}

	if (priv->extclk)
		FUNC0(priv->extclk);

	dma = FUNC1(sizeof(struct snd_dmaengine_dai_dma_data), GFP_KERNEL);
	if (!dma)
		return -ENOMEM;
	dma->chan_name = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ?
		"tx" : "rx";

	FUNC4(cpu_dai, substream, dma);

	return ret;
}