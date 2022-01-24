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
struct sspa_priv {int /*<<< orphan*/  running_cnt; struct ssp_device* sspa; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct ssp_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssp_device*) ; 
 struct sspa_priv* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream, int cmd,
			     struct snd_soc_dai *dai)
{
	struct sspa_priv *sspa_priv = FUNC4(dai);
	struct ssp_device *sspa = sspa_priv->sspa;
	int ret = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		/*
		 * whatever playback or capture, must enable rx.
		 * this is a hw issue, so need check if rx has been
		 * enabled or not; if has been enabled by another
		 * stream, do not enable again.
		 */
		if (!sspa_priv->running_cnt)
			FUNC1(sspa);

		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			FUNC3(sspa);

		sspa_priv->running_cnt++;
		break;

	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		sspa_priv->running_cnt--;

		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			FUNC2(sspa);

		/* have no capture stream, disable rx port */
		if (!sspa_priv->running_cnt)
			FUNC0(sspa);
		break;

	default:
		ret = -EINVAL;
	}

	return ret;
}