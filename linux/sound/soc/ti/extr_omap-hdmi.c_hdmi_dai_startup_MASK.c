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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct hdmi_audio_data {int /*<<< orphan*/  current_stream_lock; struct snd_pcm_substream* current_stream; int /*<<< orphan*/  dssdev; TYPE_1__* ops; int /*<<< orphan*/  dma_data; } ;
struct TYPE_2__ {int (* audio_startup ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 struct hdmi_audio_data* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  hdmi_dai_abort ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dai*,struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			    struct snd_soc_dai *dai)
{
	struct hdmi_audio_data *ad = FUNC0(substream);
	int ret;
	/*
	 * Make sure that the period bytes are multiple of the DMA packet size.
	 * Largest packet size we use is 32 32-bit words = 128 bytes
	 */
	ret = FUNC4(substream->runtime, 0,
					 SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 128);
	if (ret < 0) {
		FUNC1(dai->dev, "Could not apply period constraint: %d\n",
			ret);
		return ret;
	}
	ret = FUNC4(substream->runtime, 0,
					 SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 128);
	if (ret < 0) {
		FUNC1(dai->dev, "Could not apply buffer constraint: %d\n",
			ret);
		return ret;
	}

	FUNC5(dai, substream, &ad->dma_data);

	FUNC2(&ad->current_stream_lock);
	ad->current_stream = substream;
	FUNC3(&ad->current_stream_lock);

	ret = ad->ops->audio_startup(ad->dssdev, hdmi_dai_abort);

	if (ret) {
		FUNC2(&ad->current_stream_lock);
		ad->current_stream = NULL;
		FUNC3(&ad->current_stream_lock);
	}

	return ret;
}