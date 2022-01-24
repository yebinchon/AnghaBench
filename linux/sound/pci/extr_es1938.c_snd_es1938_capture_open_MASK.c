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
struct es1938 {struct snd_pcm_substream* capture_substream; scalar_t__ playback2_substream; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  hw_constraints_clocks ; 
 int /*<<< orphan*/  snd_es1938_capture ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct es1938* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct es1938 *chip = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	if (chip->playback2_substream)
		return -EAGAIN;
	chip->capture_substream = substream;
	runtime->hw = snd_es1938_capture;
	FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				      &hw_constraints_clocks);
	FUNC0(runtime, SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 0, 0xff00);
	return 0;
}