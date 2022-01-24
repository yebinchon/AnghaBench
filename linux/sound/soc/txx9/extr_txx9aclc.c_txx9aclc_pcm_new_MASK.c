#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct txx9aclc_soc_device {TYPE_2__* dmadata; } ;
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; struct snd_soc_dai* cpu_dai; TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm {int dummy; } ;
struct snd_card {int /*<<< orphan*/  dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dma_chan; struct resource* dma_res; int /*<<< orphan*/  stream; } ;
struct TYPE_3__ {struct snd_card* snd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct txx9aclc_soc_device* FUNC3 (struct snd_soc_dai*) ; 
 struct snd_soc_component* FUNC4 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct txx9aclc_soc_device*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_card *card = rtd->card->snd_card;
	struct snd_soc_dai *dai = rtd->cpu_dai;
	struct snd_pcm *pcm = rtd->pcm;
	struct snd_soc_component *component = FUNC4(rtd, DRV_NAME);
	struct platform_device *pdev = FUNC5(component->dev);
	struct txx9aclc_soc_device *dev;
	struct resource *r;
	int i;
	int ret;

	/* at this point onwards the AC97 component has probed and this will be valid */
	dev = FUNC3(dai);

	dev->dmadata[0].stream = SNDRV_PCM_STREAM_PLAYBACK;
	dev->dmadata[1].stream = SNDRV_PCM_STREAM_CAPTURE;
	for (i = 0; i < 2; i++) {
		r = FUNC1(pdev, IORESOURCE_DMA, i);
		if (!r) {
			ret = -EBUSY;
			goto exit;
		}
		dev->dmadata[i].dma_res = r;
		ret = FUNC6(dev, &dev->dmadata[i]);
		if (ret)
			goto exit;
	}

	FUNC2(pcm, SNDRV_DMA_TYPE_DEV,
		card->dev, 64 * 1024, 4 * 1024 * 1024);
	return 0;

exit:
	for (i = 0; i < 2; i++) {
		if (dev->dmadata[i].dma_chan)
			FUNC0(dev->dmadata[i].dma_chan);
		dev->dmadata[i].dma_chan = NULL;
	}
	return ret;
}