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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct fm801 {scalar_t__ multichannel; struct snd_pcm_substream* playback_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  hw_constraints_channels ; 
 int /*<<< orphan*/  hw_constraints_rates ; 
 TYPE_1__ snd_fm801_playback ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fm801* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct fm801 *chip = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	chip->playback_substream = substream;
	runtime->hw = snd_fm801_playback;
	FUNC1(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				   &hw_constraints_rates);
	if (chip->multichannel) {
		runtime->hw.channels_max = 6;
		FUNC1(runtime, 0,
					   SNDRV_PCM_HW_PARAM_CHANNELS,
					   &hw_constraints_channels);
	}
	if ((err = FUNC0(runtime, SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
		return err;
	return 0;
}