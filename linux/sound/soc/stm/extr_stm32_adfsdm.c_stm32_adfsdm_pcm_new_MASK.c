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
struct stm32_adfsdm_priv {int /*<<< orphan*/  dev; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; struct snd_pcm* pcm; } ;
struct snd_pcm {int dummy; } ;

/* Variables and functions */
 unsigned int DFSDM_MAX_PERIODS ; 
 unsigned int DFSDM_MAX_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct stm32_adfsdm_priv* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_pcm *pcm = rtd->pcm;
	struct stm32_adfsdm_priv *priv =
		FUNC1(rtd->cpu_dai);
	unsigned int size = DFSDM_MAX_PERIODS * DFSDM_MAX_PERIOD_SIZE;

	FUNC0(pcm, SNDRV_DMA_TYPE_DEV,
					      priv->dev, size, size);
	return 0;
}