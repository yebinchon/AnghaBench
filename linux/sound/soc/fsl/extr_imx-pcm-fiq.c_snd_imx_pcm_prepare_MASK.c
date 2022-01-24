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
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct imx_pcm_runtime_data* private_data; } ;
struct pt_regs {int ARM_r8; int ARM_r9; } ;
struct imx_pcm_runtime_data {int period; int periods; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct imx_pcm_runtime_data *iprtd = runtime->private_data;
	struct pt_regs regs;

	FUNC0(&regs);
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		regs.ARM_r8 = (iprtd->period * iprtd->periods - 1) << 16;
	else
		regs.ARM_r9 = (iprtd->period * iprtd->periods - 1) << 16;

	FUNC1(&regs);

	return 0;
}