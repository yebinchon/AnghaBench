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
struct snd_pcm_substream {int dummy; } ;
struct dmaengine_pcm_runtime_data {int /*<<< orphan*/  dma_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dmaengine_pcm_runtime_data*) ; 
 struct dmaengine_pcm_runtime_data* FUNC3 (struct snd_pcm_substream*) ; 

int FUNC4(struct snd_pcm_substream *substream)
{
	struct dmaengine_pcm_runtime_data *prtd = FUNC3(substream);

	FUNC1(prtd->dma_chan);
	FUNC0(prtd->dma_chan);
	FUNC2(prtd);

	return 0;
}