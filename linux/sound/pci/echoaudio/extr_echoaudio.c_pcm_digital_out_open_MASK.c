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
struct snd_pcm_substream {int number; int /*<<< orphan*/  runtime; } ;
struct echoaudio {scalar_t__ digital_mode; int /*<<< orphan*/  mode_mutex; scalar_t__ can_set_rate; scalar_t__ rate_set; int /*<<< orphan*/  opencount; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_MODE_ADAT ; 
 int ECHOCARD_HAS_ADAT ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw_rule_playback_channels_by_format ; 
 int /*<<< orphan*/  hw_rule_playback_format_by_channels ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct echoaudio*) ; 
 int FUNC5 (struct snd_pcm_substream*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct echoaudio* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct echoaudio *chip = FUNC7(substream);
	int err, max_channels;

	max_channels = FUNC4(chip) - substream->number;
	FUNC2(&chip->mode_mutex);
	if (chip->digital_mode == DIGITAL_MODE_ADAT)
		err = FUNC5(substream, max_channels);
	else	/* If the card has ADAT, subtract the 6 channels
		 * that S/PDIF doesn't have
		 */
		err = FUNC5(substream, max_channels - ECHOCARD_HAS_ADAT);

	if (err < 0)
		goto dout_exit;

	if ((err = FUNC6(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_CHANNELS,
				       hw_rule_playback_channels_by_format,
				       NULL, SNDRV_PCM_HW_PARAM_FORMAT,
				       -1)) < 0)
		goto dout_exit;
	if ((err = FUNC6(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_FORMAT,
				       hw_rule_playback_format_by_channels,
				       NULL, SNDRV_PCM_HW_PARAM_CHANNELS,
				       -1)) < 0)
		goto dout_exit;
	FUNC0(&chip->opencount);
	if (FUNC1(&chip->opencount) > 1 && chip->rate_set)
		chip->can_set_rate=0;
dout_exit:
	FUNC3(&chip->mode_mutex);
	return err;
}