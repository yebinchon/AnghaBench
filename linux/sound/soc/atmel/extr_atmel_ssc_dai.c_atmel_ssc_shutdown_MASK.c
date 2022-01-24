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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct platform_device {size_t id; } ;
struct atmel_ssc_info {int dir_mask; TYPE_1__* ssc; scalar_t__ forced_divider; scalar_t__ rcmr_period; scalar_t__ tcmr_period; scalar_t__ cmr_div; scalar_t__ initialized; struct atmel_pcm_dma_params** dma_params; } ;
struct atmel_pcm_dma_params {int /*<<< orphan*/ * substream; int /*<<< orphan*/ * ssc; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int /*<<< orphan*/  CR_SWRST ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct atmel_ssc_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct atmel_ssc_info* ssc_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *dai)
{
	struct platform_device *pdev = FUNC5(dai->dev);
	struct atmel_ssc_info *ssc_p = &ssc_info[pdev->id];
	struct atmel_pcm_dma_params *dma_params;
	int dir, dir_mask;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		dir = 0;
	else
		dir = 1;

	dma_params = ssc_p->dma_params[dir];

	if (dma_params != NULL) {
		dma_params->ssc = NULL;
		dma_params->substream = NULL;
		ssc_p->dma_params[dir] = NULL;
	}

	dir_mask = 1 << dir;

	ssc_p->dir_mask &= ~dir_mask;
	if (!ssc_p->dir_mask) {
		if (ssc_p->initialized) {
			FUNC2(ssc_p->ssc->irq, ssc_p);
			ssc_p->initialized = 0;
		}

		/* Reset the SSC */
		FUNC4(ssc_p->ssc->regs, CR, FUNC0(CR_SWRST));
		/* Clear the SSC dividers */
		ssc_p->cmr_div = ssc_p->tcmr_period = ssc_p->rcmr_period = 0;
		ssc_p->forced_divider = 0;
	}

	/* Shutdown the SSC clock. */
	FUNC3("atmel_ssc_dai: Stopping clock\n");
	FUNC1(ssc_p->ssc->clk);
}