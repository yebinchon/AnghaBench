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
struct snd_ymfpci {int /*<<< orphan*/  pci; struct snd_pcm* pcm_4ch; int /*<<< orphan*/  card; } ;
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_ymfpci* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_ymfpci_playback_4ch_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  surround_map ; 

int FUNC6(struct snd_ymfpci *chip, int device)
{
	struct snd_pcm *pcm;
	int err;

	if ((err = FUNC3(chip->card, "YMFPCI - Rear", device, 1, 0, &pcm)) < 0)
		return err;
	pcm->private_data = chip;

	FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ymfpci_playback_4ch_ops);

	/* global setup */
	pcm->info_flags = 0;
	FUNC5(pcm->name, "YMFPCI - Rear PCM");
	chip->pcm_4ch = pcm;

	FUNC2(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC0(chip->pci), 64*1024, 256*1024);

	return FUNC1(pcm, SNDRV_PCM_STREAM_PLAYBACK,
				     surround_map, 2, 0, NULL);
}