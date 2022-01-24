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
struct vx_pipe {int transferred; scalar_t__ running; } ;
struct vx_core {int chip_status; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; } ;

/* Variables and functions */
 int VX_STAT_IS_STALE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct vx_core*,struct snd_pcm_runtime*,struct vx_pipe*) ; 

__attribute__((used)) static void FUNC2(struct vx_core *chip,
				   struct snd_pcm_substream *subs,
				   struct vx_pipe *pipe)
{
	int err;
	struct snd_pcm_runtime *runtime = subs->runtime;

	if (pipe->running && ! (chip->chip_status & VX_STAT_IS_STALE)) {
		if ((err = FUNC1(chip, runtime, pipe)) < 0)
			return;
		if (pipe->transferred >= (int)runtime->period_size) {
			pipe->transferred %= runtime->period_size;
			FUNC0(subs);
		}
	}
}