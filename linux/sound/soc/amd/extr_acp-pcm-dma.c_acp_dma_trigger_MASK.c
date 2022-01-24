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
struct snd_pcm_substream {int /*<<< orphan*/  stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct audio_substream_data* private_data; } ;
struct audio_substream_data {int /*<<< orphan*/  ch1; int /*<<< orphan*/  acp_mmio; int /*<<< orphan*/  ch2; int /*<<< orphan*/  capture_channel; int /*<<< orphan*/  bytescount; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CHANNEL0 ; 
 int /*<<< orphan*/  CAP_CHANNEL1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audio_substream_data*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream, int cmd)
{
	int ret;

	struct snd_pcm_runtime *runtime = substream->runtime;
	struct audio_substream_data *rtd = runtime->private_data;

	if (!rtd)
		return -EINVAL;
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_RESUME:
		rtd->bytescount = FUNC4(rtd);
		if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
			if (rtd->capture_channel == CAP_CHANNEL0) {
				FUNC0(rtd->acp_mmio,
							    CAP_CHANNEL1);
				FUNC1(rtd->acp_mmio,
							   CAP_CHANNEL0);
			}
			if (rtd->capture_channel == CAP_CHANNEL1) {
				FUNC0(rtd->acp_mmio,
							    CAP_CHANNEL0);
				FUNC1(rtd->acp_mmio,
							   CAP_CHANNEL1);
			}
			FUNC2(rtd->acp_mmio, rtd->ch1, true);
		} else {
			FUNC2(rtd->acp_mmio, rtd->ch1, true);
			FUNC2(rtd->acp_mmio, rtd->ch2, true);
		}
		ret = 0;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC3(rtd->acp_mmio, rtd->ch2);
		ret = FUNC3(rtd->acp_mmio, rtd->ch1);
		break;
	default:
		ret = -EINVAL;
	}
	return ret;
}