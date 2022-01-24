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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; scalar_t__ number; } ;
struct echoaudio {int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  opencount; scalar_t__ can_set_rate; TYPE_1__* card; scalar_t__ rate_set; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw_rule_capture_channels_by_format ; 
 int /*<<< orphan*/  hw_rule_capture_format_by_channels ; 
 scalar_t__ FUNC3 (struct echoaudio*) ; 
 int FUNC4 (struct snd_pcm_substream*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct echoaudio* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct echoaudio *chip = FUNC6(substream);
	int err;

	if ((err = FUNC4(substream, FUNC3(chip) -
			    substream->number)) < 0)
		return err;
	if ((err = FUNC5(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_CHANNELS,
				       hw_rule_capture_channels_by_format, NULL,
				       SNDRV_PCM_HW_PARAM_FORMAT, -1)) < 0)
		return err;
	if ((err = FUNC5(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_FORMAT,
				       hw_rule_capture_format_by_channels, NULL,
				       SNDRV_PCM_HW_PARAM_CHANNELS, -1)) < 0)
		return err;
	FUNC0(&chip->opencount);
	if (FUNC1(&chip->opencount) > 1 && chip->rate_set)
		chip->can_set_rate=0;
	FUNC2(chip->card->dev, "pcm_analog_in_open  cs=%d  oc=%d  r=%d\n",
		chip->can_set_rate, FUNC1(&chip->opencount),
		chip->sample_rate);
	return 0;
}