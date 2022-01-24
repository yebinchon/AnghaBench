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
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; TYPE_2__* card; } ;
struct snd_pcm {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  buffer_bytes_max; } ;
struct TYPE_5__ {TYPE_1__* snd_card; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ uniphier_aiodma_hw ; 

__attribute__((used)) static int FUNC3(struct snd_soc_pcm_runtime *rtd)
{
	struct device *dev = rtd->card->snd_card->dev;
	struct snd_pcm *pcm = rtd->pcm;
	int ret;

	ret = FUNC1(dev, FUNC0(33));
	if (ret)
		return ret;

	FUNC2(pcm,
		SNDRV_DMA_TYPE_DEV, dev,
		uniphier_aiodma_hw.buffer_bytes_max,
		uniphier_aiodma_hw.buffer_bytes_max);
	return 0;
}