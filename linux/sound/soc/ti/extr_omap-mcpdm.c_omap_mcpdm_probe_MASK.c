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
struct snd_soc_dai {int dummy; } ;
struct omap_mcpdm {int /*<<< orphan*/ * dma_data; TYPE_1__* config; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCPDM_REG_CTRL ; 
 int MCPDM_UP_THRES_MAX ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  omap_mcpdm_irq_handler ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mcpdm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 struct omap_mcpdm* FUNC7 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_dai *dai)
{
	struct omap_mcpdm *mcpdm = FUNC7(dai);
	int ret;

	FUNC3(mcpdm->dev);

	/* Disable lines while request is ongoing */
	FUNC4(mcpdm->dev);
	FUNC1(mcpdm, MCPDM_REG_CTRL, 0x00);

	ret = FUNC6(mcpdm->irq, omap_mcpdm_irq_handler, 0, "McPDM",
			  (void *)mcpdm);

	FUNC5(mcpdm->dev);

	if (ret) {
		FUNC0(mcpdm->dev, "Request for IRQ failed\n");
		FUNC2(mcpdm->dev);
	}

	/* Configure McPDM threshold values */
	mcpdm->config[SNDRV_PCM_STREAM_PLAYBACK].threshold = 2;
	mcpdm->config[SNDRV_PCM_STREAM_CAPTURE].threshold =
							MCPDM_UP_THRES_MAX - 3;

	FUNC8(dai,
				  &mcpdm->dma_data[SNDRV_PCM_STREAM_PLAYBACK],
				  &mcpdm->dma_data[SNDRV_PCM_STREAM_CAPTURE]);

	return ret;
}