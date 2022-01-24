#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm32_adfsdm_priv {int /*<<< orphan*/  iio_cb; int /*<<< orphan*/  pcm_buff; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_pcm_substream {TYPE_1__* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_area; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct stm32_adfsdm_priv* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				      struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct stm32_adfsdm_priv *priv =
		FUNC4(rtd->cpu_dai);
	int ret;

	ret =  FUNC3(substream, FUNC1(params));
	if (ret < 0)
		return ret;
	priv->pcm_buff = substream->runtime->dma_area;

	return FUNC0(priv->iio_cb,
						   FUNC2(params));
}