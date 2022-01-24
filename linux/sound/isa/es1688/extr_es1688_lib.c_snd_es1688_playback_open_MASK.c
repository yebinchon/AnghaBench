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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct snd_es1688 {struct snd_pcm_substream* playback_substream; int /*<<< orphan*/ * capture_substream; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  hw_constraints_clocks ; 
 int /*<<< orphan*/  snd_es1688_playback ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct snd_es1688* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_es1688 *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	if (chip->capture_substream != NULL)
		return -EAGAIN;
	chip->playback_substream = substream;
	runtime->hw = snd_es1688_playback;
	FUNC0(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				      &hw_constraints_clocks);
	return 0;
}