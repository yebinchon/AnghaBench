#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_3__* driver; } ;
struct snd_pcm {int dummy; } ;
struct TYPE_5__ {scalar_t__ channels_min; } ;
struct TYPE_4__ {scalar_t__ channels_min; } ;
struct TYPE_6__ {TYPE_2__ capture; TYPE_1__ playback; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_DMA ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  SST_MAX_BUFFER ; 
 int /*<<< orphan*/  SST_MIN_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_dai *dai = rtd->cpu_dai;
	struct snd_pcm *pcm = rtd->pcm;

	if (dai->driver->playback.channels_min ||
			dai->driver->capture.channels_min) {
		FUNC1(pcm,
			SNDRV_DMA_TYPE_CONTINUOUS,
			FUNC0(GFP_DMA),
			SST_MIN_BUFFER, SST_MAX_BUFFER);
	}
	return 0;
}