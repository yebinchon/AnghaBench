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
struct snd_pcm {int /*<<< orphan*/  name; int /*<<< orphan*/  info_flags; struct snd_es1688* private_data; } ;
struct snd_es1688 {struct snd_pcm* pcm; } ;
struct snd_card {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_INFO_HALF_DUPLEX ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  snd_es1688_capture_ops ; 
 int /*<<< orphan*/  FUNC0 (struct snd_es1688*) ; 
 int /*<<< orphan*/  snd_es1688_playback_ops ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct snd_card*,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct snd_card *card, struct snd_es1688 *chip, int device)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC2(card, "ESx688", device, 1, 1, &pcm);
	if (err < 0)
		return err;

	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_es1688_playback_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_es1688_capture_ops);

	pcm->private_data = chip;
	pcm->info_flags = SNDRV_PCM_INFO_HALF_DUPLEX;
	FUNC4(pcm->name, FUNC0(chip));
	chip->pcm = pcm;

	FUNC1(pcm, SNDRV_DMA_TYPE_DEV,
					      card->dev,
					      64*1024, 64*1024);
	return 0;
}