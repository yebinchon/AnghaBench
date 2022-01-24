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
struct snd_sgio2audio {int /*<<< orphan*/  card; } ;
struct snd_pcm {int /*<<< orphan*/  name; struct snd_sgio2audio* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_sgio2audio_capture_ops ; 
 int /*<<< orphan*/  snd_sgio2audio_playback1_ops ; 
 int /*<<< orphan*/  snd_sgio2audio_playback2_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct snd_sgio2audio *chip)
{
	struct snd_pcm *pcm;
	int err;

	/* create first pcm device with one outputs and one input */
	err = FUNC0(chip->card, "SGI O2 Audio", 0, 1, 1, &pcm);
	if (err < 0)
		return err;

	pcm->private_data = chip;
	FUNC2(pcm->name, "SGI O2 DAC1");

	/* set operators */
	FUNC1(pcm, SNDRV_PCM_STREAM_PLAYBACK,
			&snd_sgio2audio_playback1_ops);
	FUNC1(pcm, SNDRV_PCM_STREAM_CAPTURE,
			&snd_sgio2audio_capture_ops);

	/* create second  pcm device with one outputs and no input */
	err = FUNC0(chip->card, "SGI O2 Audio", 1, 1, 0, &pcm);
	if (err < 0)
		return err;

	pcm->private_data = chip;
	FUNC2(pcm->name, "SGI O2 DAC2");

	/* set operators */
	FUNC1(pcm, SNDRV_PCM_STREAM_PLAYBACK,
			&snd_sgio2audio_playback2_ops);

	return 0;
}