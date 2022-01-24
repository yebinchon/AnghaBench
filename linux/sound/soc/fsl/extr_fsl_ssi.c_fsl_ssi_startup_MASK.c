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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct fsl_ssi {scalar_t__ use_dual_fifo; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct fsl_ssi* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			   struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct fsl_ssi *ssi = FUNC2(rtd->cpu_dai);
	int ret;

	ret = FUNC0(ssi->clk);
	if (ret)
		return ret;

	/*
	 * When using dual fifo mode, it is safer to ensure an even period
	 * size. If appearing to an odd number while DMA always starts its
	 * task from fifo0, fifo1 would be neglected at the end of each
	 * period. But SSI would still access fifo1 with an invalid data.
	 */
	if (ssi->use_dual_fifo)
		FUNC1(substream->runtime, 0,
					   SNDRV_PCM_HW_PARAM_PERIOD_SIZE, 2);

	return 0;
}