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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct davinci_mcasp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct davinci_mcasp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_mcasp*,int /*<<< orphan*/ ) ; 
 struct davinci_mcasp* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				     int cmd, struct snd_soc_dai *cpu_dai)
{
	struct davinci_mcasp *mcasp = FUNC2(cpu_dai);
	int ret = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC0(mcasp, substream->stream);
		break;
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC1(mcasp, substream->stream);
		break;

	default:
		ret = -EINVAL;
	}

	return ret;
}