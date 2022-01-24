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
struct snd_soc_dai {int dummy; } ;
struct omap_mcbsp {int /*<<< orphan*/ * dma_data; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_mcbsp* FUNC1 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai)
{
	struct omap_mcbsp *mcbsp = FUNC1(dai);

	FUNC0(mcbsp->dev);

	FUNC2(dai,
				  &mcbsp->dma_data[SNDRV_PCM_STREAM_PLAYBACK],
				  &mcbsp->dma_data[SNDRV_PCM_STREAM_CAPTURE]);

	return 0;
}