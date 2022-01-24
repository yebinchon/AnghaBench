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
struct snd_intelhad {int need_reset; int /*<<< orphan*/  had_spinlock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 132 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 131 
#define  SNDRV_PCM_TRIGGER_RESUME 130 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_intelhad*,int) ; 
 struct snd_intelhad* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream, int cmd)
{
	int retval = 0;
	struct snd_intelhad *intelhaddata;

	intelhaddata = FUNC2(substream);

	FUNC3(&intelhaddata->had_spinlock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_RESUME:
		/* Enable Audio */
		FUNC0(intelhaddata); /* FIXME: do we need this? */
		FUNC1(intelhaddata, true);
		break;

	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		/* Disable Audio */
		FUNC1(intelhaddata, false);
		intelhaddata->need_reset = true;
		break;

	default:
		retval = -EINVAL;
	}
	FUNC4(&intelhaddata->had_spinlock);
	return retval;
}