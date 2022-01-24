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
struct TYPE_2__ {int channels_max; int rates; int rate_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct cmipci {int max_channels; int chip_version; int /*<<< orphan*/  open_mutex; scalar_t__ can_multi_ch; int /*<<< orphan*/ * opened; } ;

/* Variables and functions */
 size_t CM_CH_PLAY ; 
 int /*<<< orphan*/  CM_OPEN_PLAYBACK2 ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int SNDRV_PCM_RATE_88200 ; 
 int SNDRV_PCM_RATE_96000 ; 
 int SNDRV_PCM_RATE_KNOT ; 
 int /*<<< orphan*/  hw_constraints_channels_4 ; 
 int /*<<< orphan*/  hw_constraints_channels_6 ; 
 int /*<<< orphan*/  hw_constraints_channels_8 ; 
 int /*<<< orphan*/  hw_constraints_rates ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cmipci*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 TYPE_1__ snd_cmipci_playback2 ; 
 int FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cmipci* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct cmipci *cm = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	if ((err = FUNC2(cm, CM_OPEN_PLAYBACK2, substream)) < 0) /* use channel B */
		return err;
	runtime->hw = snd_cmipci_playback2;
	FUNC0(&cm->open_mutex);
	if (! cm->opened[CM_CH_PLAY]) {
		if (cm->can_multi_ch) {
			runtime->hw.channels_max = cm->max_channels;
			if (cm->max_channels == 4)
				FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS, &hw_constraints_channels_4);
			else if (cm->max_channels == 6)
				FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS, &hw_constraints_channels_6);
			else if (cm->max_channels == 8)
				FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS, &hw_constraints_channels_8);
		}
	}
	FUNC1(&cm->open_mutex);
	if (cm->chip_version == 68) {
		runtime->hw.rates |= SNDRV_PCM_RATE_88200 |
				     SNDRV_PCM_RATE_96000;
		runtime->hw.rate_max = 96000;
	} else if (cm->chip_version == 55) {
		err = FUNC3(runtime, 0,
			SNDRV_PCM_HW_PARAM_RATE, &hw_constraints_rates);
		if (err < 0)
			return err;
		runtime->hw.rates |= SNDRV_PCM_RATE_KNOT;
		runtime->hw.rate_max = 128000;
	}
	FUNC4(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 0, 0x10000);
	return 0;
}