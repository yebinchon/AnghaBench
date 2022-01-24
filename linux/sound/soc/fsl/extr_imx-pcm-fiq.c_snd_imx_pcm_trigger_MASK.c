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
struct snd_pcm_runtime {struct imx_pcm_runtime_data* private_data; } ;
struct imx_pcm_runtime_data {int /*<<< orphan*/  capturing; int /*<<< orphan*/  playing; int /*<<< orphan*/  poll_time_ns; int /*<<< orphan*/  hrt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_pcm_fiq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct imx_pcm_runtime_data *iprtd = runtime->private_data;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			FUNC1(&iprtd->playing, 1);
		else
			FUNC1(&iprtd->capturing, 1);
		FUNC4(&iprtd->hrt, FUNC5(iprtd->poll_time_ns),
		      HRTIMER_MODE_REL);
		FUNC3(imx_pcm_fiq);
		break;

	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
			FUNC1(&iprtd->playing, 0);
		else
			FUNC1(&iprtd->capturing, 0);
		if (!FUNC0(&iprtd->playing) &&
				!FUNC0(&iprtd->capturing))
			FUNC2(imx_pcm_fiq);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}