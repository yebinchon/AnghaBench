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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_cs46xx* private_data; } ;
struct snd_cs46xx {int /*<<< orphan*/  pci; struct snd_pcm* pcm; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PLAYBACK_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  snd_cs46xx_capture_ops ; 
 int /*<<< orphan*/  snd_cs46xx_playback_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct snd_cs46xx *chip, int device)
{
	struct snd_pcm *pcm;
	int err;

	if ((err = FUNC2(chip->card, "CS46xx", device, MAX_PLAYBACK_CHANNELS, 1, &pcm)) < 0)
		return err;

	pcm->private_data = chip;

	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_cs46xx_playback_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_cs46xx_capture_ops);

	/* global setup */
	pcm->info_flags = 0;
	FUNC4(pcm->name, "CS46xx");
	chip->pcm = pcm;

	FUNC1(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC0(chip->pci), 64*1024, 256*1024);

	return 0;
}