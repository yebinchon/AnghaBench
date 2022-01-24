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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_ad1889* private_data; } ;
struct snd_ad1889 {int /*<<< orphan*/  pci; int /*<<< orphan*/ * csubs; int /*<<< orphan*/ * psubs; struct snd_pcm* pcm; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int BUFFER_BYTES_MAX ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  snd_ad1889_capture_ops ; 
 int /*<<< orphan*/  snd_ad1889_playback_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct snd_ad1889 *chip, int device)
{
	int err;
	struct snd_pcm *pcm;

	err = FUNC2(chip->card, chip->card->driver, device, 1, 1, &pcm);
	if (err < 0)
		return err;

	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, 
			&snd_ad1889_playback_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE,
			&snd_ad1889_capture_ops);

	pcm->private_data = chip;
	pcm->info_flags = 0;
	FUNC4(pcm->name, chip->card->shortname);
	
	chip->pcm = pcm;
	chip->psubs = NULL;
	chip->csubs = NULL;

	FUNC1(pcm, SNDRV_DMA_TYPE_DEV,
						FUNC0(chip->pci),
						BUFFER_BYTES_MAX / 2,
						BUFFER_BYTES_MAX);

	return 0;
}