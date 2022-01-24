#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vx_pipe {struct vx_pipe* monitoring_pipe; int /*<<< orphan*/  references; struct snd_pcm_substream* substream; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct vx_core {int chip_status; unsigned int audio_ins; TYPE_2__ ibl; scalar_t__* audio_monitor_active; int /*<<< orphan*/ * audio_monitor; struct vx_pipe** playback_pipes; struct vx_pipe** capture_pipes; } ;
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int /*<<< orphan*/  period_bytes_min; } ;
struct snd_pcm_runtime {struct vx_pipe* private_data; TYPE_3__ hw; } ;
struct TYPE_4__ {int device; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int VX_STAT_IS_STALE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct vx_core* FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct vx_core*,int,unsigned int,int,struct vx_pipe**) ; 
 TYPE_3__ vx_pcm_capture_hw ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *subs)
{
	struct snd_pcm_runtime *runtime = subs->runtime;
	struct vx_core *chip = FUNC2(subs);
	struct vx_pipe *pipe;
	struct vx_pipe *pipe_out_monitoring = NULL;
	unsigned int audio;
	int err;

	if (chip->chip_status & VX_STAT_IS_STALE)
		return -EBUSY;

	audio = subs->pcm->device * 2;
	if (FUNC0(audio >= chip->audio_ins))
		return -EINVAL;
	err = FUNC3(chip, 1, audio, 2, &pipe);
	if (err < 0)
		return err;
	pipe->substream = subs;
	chip->capture_pipes[audio] = pipe;

	/* check if monitoring is needed */
	if (chip->audio_monitor_active[audio]) {
		pipe_out_monitoring = chip->playback_pipes[audio];
		if (! pipe_out_monitoring) {
			/* allocate a pipe */
			err = FUNC3(chip, 0, audio, 2, &pipe_out_monitoring);
			if (err < 0)
				return err;
			chip->playback_pipes[audio] = pipe_out_monitoring;
		}
		pipe_out_monitoring->references++;
		/* 
		   if an output pipe is available, it's audios still may need to be 
		   unmuted. hence we'll have to call a mixer entry point.
		*/
		FUNC4(chip, audio, chip->audio_monitor[audio],
				     chip->audio_monitor_active[audio]);
		/* assuming stereo */
		FUNC4(chip, audio+1, chip->audio_monitor[audio+1],
				     chip->audio_monitor_active[audio+1]); 
	}

	pipe->monitoring_pipe = pipe_out_monitoring; /* default value NULL */

	runtime->hw = vx_pcm_capture_hw;
	runtime->hw.period_bytes_min = chip->ibl.size;
	runtime->private_data = pipe;

	/* align to 4 bytes (otherwise will be problematic when 24bit is used) */ 
	FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 4);
	FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 4);

	return 0;
}