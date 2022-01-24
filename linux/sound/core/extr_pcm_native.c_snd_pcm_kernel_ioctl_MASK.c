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
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
typedef  int snd_pcm_sframes_t ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_IOCTL_DELAY 135 
#define  SNDRV_PCM_IOCTL_DRAIN 134 
#define  SNDRV_PCM_IOCTL_DROP 133 
#define  SNDRV_PCM_IOCTL_FORWARD 132 
#define  SNDRV_PCM_IOCTL_HW_PARAMS 131 
#define  SNDRV_PCM_IOCTL_PREPARE 130 
#define  SNDRV_PCM_IOCTL_START 129 
#define  SNDRV_PCM_IOCTL_SW_PARAMS 128 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int FUNC0 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_pcm_substream*,void*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_pcm_substream*) ; 
 int FUNC7 (struct snd_pcm_substream*,void*) ; 

int FUNC8(struct snd_pcm_substream *substream,
			 unsigned int cmd, void *arg)
{
	snd_pcm_uframes_t *frames = arg;
	snd_pcm_sframes_t result;
	
	switch (cmd) {
	case SNDRV_PCM_IOCTL_FORWARD:
	{
		/* provided only for OSS; capture-only and no value returned */
		if (substream->stream != SNDRV_PCM_STREAM_CAPTURE)
			return -EINVAL;
		result = FUNC3(substream, *frames);
		return result < 0 ? result : 0;
	}
	case SNDRV_PCM_IOCTL_HW_PARAMS:
		return FUNC4(substream, arg);
	case SNDRV_PCM_IOCTL_SW_PARAMS:
		return FUNC7(substream, arg);
	case SNDRV_PCM_IOCTL_PREPARE:
		return FUNC5(substream, NULL);
	case SNDRV_PCM_IOCTL_START:
		return FUNC6(substream);
	case SNDRV_PCM_IOCTL_DRAIN:
		return FUNC1(substream, NULL);
	case SNDRV_PCM_IOCTL_DROP:
		return FUNC2(substream);
	case SNDRV_PCM_IOCTL_DELAY:
		return FUNC0(substream, frames);
	default:
		return -EINVAL;
	}
}