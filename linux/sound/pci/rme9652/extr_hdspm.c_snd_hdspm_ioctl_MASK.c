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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_channel_info {int dummy; } ;

/* Variables and functions */
#define  SNDRV_PCM_IOCTL1_CHANNEL_INFO 129 
#define  SNDRV_PCM_IOCTL1_RESET 128 
 int FUNC0 (struct snd_pcm_substream*,struct snd_pcm_channel_info*) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_pcm_substream*,unsigned int,void*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
		unsigned int cmd, void *arg)
{
	switch (cmd) {
	case SNDRV_PCM_IOCTL1_RESET:
		return FUNC1(substream);

	case SNDRV_PCM_IOCTL1_CHANNEL_INFO:
		{
			struct snd_pcm_channel_info *info = arg;
			return FUNC0(substream, info);
		}
	default:
		break;
	}

	return FUNC2(substream, cmd, arg);
}