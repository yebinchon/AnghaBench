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
struct snd_pcm_substream {int /*<<< orphan*/  pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* status; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
typedef  int snd_pcm_sframes_t ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int EPIPE ; 
 int ESTRPIPE ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL_DRAIN ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL_DROP ; 
 scalar_t__ SNDRV_PCM_STATE_DRAINING ; 
 scalar_t__ SNDRV_PCM_STATE_SETUP ; 
 scalar_t__ SNDRV_PCM_STATE_SUSPENDED ; 
 scalar_t__ SNDRV_PCM_STATE_XRUN ; 
 int FUNC0 (struct snd_pcm_substream*,void*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_pcm_substream*,int*) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 

snd_pcm_sframes_t FUNC5(struct snd_pcm_substream *substream, char *ptr, snd_pcm_uframes_t frames, int in_kernel)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	snd_pcm_sframes_t delay;
	int ret;
	while (1) {
		if (runtime->status->state == SNDRV_PCM_STATE_XRUN ||
		    runtime->status->state == SNDRV_PCM_STATE_SUSPENDED) {
#ifdef OSS_DEBUG
			pcm_dbg(substream->pcm,
				"pcm_oss: read: recovering from %s\n",
				runtime->status->state == SNDRV_PCM_STATE_XRUN ?
				"XRUN" : "SUSPEND");
#endif
			ret = FUNC2(substream, SNDRV_PCM_IOCTL_DRAIN, NULL);
			if (ret < 0)
				break;
		} else if (runtime->status->state == SNDRV_PCM_STATE_SETUP) {
			ret = FUNC4(substream);
			if (ret < 0)
				break;
		}
		ret = FUNC3(substream, &delay);
		if (ret < 0)
			break;
		ret = FUNC0(substream, (void *)ptr, true,
					 frames, in_kernel);
		if (ret == -EPIPE) {
			if (runtime->status->state == SNDRV_PCM_STATE_DRAINING) {
				ret = FUNC2(substream, SNDRV_PCM_IOCTL_DROP, NULL);
				if (ret < 0)
					break;
			}
			continue;
		}
		if (ret != -ESTRPIPE)
			break;
	}
	return ret;
}