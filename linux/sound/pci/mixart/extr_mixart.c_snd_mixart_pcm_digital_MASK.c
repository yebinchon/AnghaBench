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
struct snd_pcm {int nonatomic; int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_mixart* private_data; } ;
struct snd_mixart {int chip_idx; struct snd_pcm* pcm_dig; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIXART_CAPTURE_STREAMS ; 
 int /*<<< orphan*/  MIXART_PCM_DIGITAL ; 
 int /*<<< orphan*/  MIXART_PLAYBACK_STREAMS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixart*,struct snd_pcm*) ; 
 int /*<<< orphan*/  snd_mixart_capture_ops ; 
 int /*<<< orphan*/  snd_mixart_playback_ops ; 
 int FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct snd_mixart *chip)
{
	int err;
	struct snd_pcm *pcm;
	char name[32];

	FUNC4(name, "miXart AES/EBU %d", chip->chip_idx);
	if ((err = FUNC2(chip->card, name, MIXART_PCM_DIGITAL,
			       MIXART_PLAYBACK_STREAMS,
			       MIXART_CAPTURE_STREAMS, &pcm)) < 0) {
		FUNC0(chip->card->dev,
			"cannot create the digital pcm %d\n", chip->chip_idx);
		return err;
	}

	pcm->private_data = chip;

	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_mixart_playback_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_mixart_capture_ops);

	pcm->info_flags = 0;
	pcm->nonatomic = true;
	FUNC5(pcm->name, name);

	FUNC1(chip, pcm);

	chip->pcm_dig = pcm;
	return 0;
}