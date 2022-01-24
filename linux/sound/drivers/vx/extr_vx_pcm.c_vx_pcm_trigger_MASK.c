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
struct vx_pipe {int running; int /*<<< orphan*/  is_capture; } ;
struct vx_core {int chip_status; int /*<<< orphan*/  pcm_running; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct vx_pipe* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int VX_STAT_IS_STALE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct vx_core* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,struct snd_pcm_substream*,struct vx_pipe*,int) ; 
 int FUNC3 (struct vx_core*,struct vx_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,struct vx_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct vx_core*,struct vx_pipe*) ; 
 int FUNC6 (struct vx_core*,struct vx_pipe*,int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *subs, int cmd)
{
	struct vx_core *chip = FUNC1(subs);
	struct vx_pipe *pipe = subs->runtime->private_data;
	int err;

	if (chip->chip_status & VX_STAT_IS_STALE)
		return -EBUSY;
		
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		if (! pipe->is_capture)
			FUNC2(chip, subs, pipe, 2);
		err = FUNC3(chip, pipe);
		if (err < 0) {
			FUNC0("vx: cannot start stream\n");
			return err;
		}
		err = FUNC6(chip, pipe, 1);
		if (err < 0) {
			FUNC0("vx: cannot start pipe\n");
			FUNC5(chip, pipe);
			return err;
		}
		chip->pcm_running++;
		pipe->running = 1;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC6(chip, pipe, 0);
		FUNC4(chip, pipe);
		FUNC5(chip, pipe);
		chip->pcm_running--;
		pipe->running = 0;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		if ((err = FUNC6(chip, pipe, 0)) < 0)
			return err;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		if ((err = FUNC6(chip, pipe, 1)) < 0)
			return err;
		break;
	default:
		return -EINVAL;
	}
	return 0;
}