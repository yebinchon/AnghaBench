#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sst_pdata {int /*<<< orphan*/  dsp; struct device* dma_dev; } ;
struct snd_soc_component {int /*<<< orphan*/  card; struct device* dev; } ;
struct hsw_priv_data {int /*<<< orphan*/ ** dmab; TYPE_1__** pcm; int /*<<< orphan*/  soc_card; int /*<<< orphan*/  pm_state; struct device* dev; int /*<<< orphan*/  hsw; } ;
struct device {int dummy; } ;
struct TYPE_8__ {scalar_t__ channels_min; } ;
struct TYPE_7__ {scalar_t__ channels_min; } ;
struct TYPE_9__ {TYPE_3__ capture; TYPE_2__ playback; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  HSW_PM_STATE_D0 ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SST_RUNTIME_SUSPEND_DELAY ; 
 struct sst_pdata* FUNC1 (struct device*) ; 
 TYPE_4__* hsw_dais ; 
 int FUNC2 (struct hsw_priv_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct hsw_priv_data* FUNC10 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component)
{
	struct hsw_priv_data *priv_data = FUNC10(component);
	struct sst_pdata *pdata = FUNC1(component->dev);
	struct device *dma_dev, *dev;
	int i, ret = 0;

	if (!pdata)
		return -ENODEV;

	dev = component->dev;
	dma_dev = pdata->dma_dev;

	priv_data->hsw = pdata->dsp;
	priv_data->dev = dev;
	priv_data->pm_state = HSW_PM_STATE_D0;
	priv_data->soc_card = component->card;

	/* allocate DSP buffer page tables */
	for (i = 0; i < FUNC0(hsw_dais); i++) {

		/* playback */
		if (hsw_dais[i].playback.channels_min) {
			FUNC3(&priv_data->pcm[i][SNDRV_PCM_STREAM_PLAYBACK].mutex);
			ret = FUNC8(SNDRV_DMA_TYPE_DEV, dma_dev,
				PAGE_SIZE, &priv_data->dmab[i][0]);
			if (ret < 0)
				goto err;
		}

		/* capture */
		if (hsw_dais[i].capture.channels_min) {
			FUNC3(&priv_data->pcm[i][SNDRV_PCM_STREAM_CAPTURE].mutex);
			ret = FUNC8(SNDRV_DMA_TYPE_DEV, dma_dev,
				PAGE_SIZE, &priv_data->dmab[i][1]);
			if (ret < 0)
				goto err;
		}
	}

	/* allocate runtime modules */
	ret = FUNC2(priv_data);
	if (ret < 0)
		goto err;

	/* enable runtime PM with auto suspend */
	FUNC6(dev, SST_RUNTIME_SUSPEND_DELAY);
	FUNC7(dev);
	FUNC4(dev);
	FUNC5(dev);

	return 0;

err:
	for (--i; i >= 0; i--) {
		if (hsw_dais[i].playback.channels_min)
			FUNC9(&priv_data->dmab[i][0]);
		if (hsw_dais[i].capture.channels_min)
			FUNC9(&priv_data->dmab[i][1]);
	}
	return ret;
}