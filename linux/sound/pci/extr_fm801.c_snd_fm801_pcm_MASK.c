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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct fm801* private_data; } ;
struct pci_dev {int dummy; } ;
struct fm801 {scalar_t__ multichannel; struct snd_pcm* pcm; int /*<<< orphan*/  card; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  snd_fm801_capture_ops ; 
 int /*<<< orphan*/  snd_fm801_playback_ops ; 
 int FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_pcm_alt_chmaps ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fm801 *chip, int device)
{
	struct pci_dev *pdev = FUNC6(chip->dev);
	struct snd_pcm *pcm;
	int err;

	if ((err = FUNC3(chip->card, "FM801", device, 1, 1, &pcm)) < 0)
		return err;

	FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_fm801_playback_ops);
	FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_fm801_capture_ops);

	pcm->private_data = chip;
	pcm->info_flags = 0;
	FUNC5(pcm->name, "FM801");
	chip->pcm = pcm;

	FUNC2(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC0(pdev),
					      chip->multichannel ? 128*1024 : 64*1024, 128*1024);

	return FUNC1(pcm, SNDRV_PCM_STREAM_PLAYBACK,
				     snd_pcm_alt_chmaps,
				     chip->multichannel ? 6 : 2, 0,
				     NULL);
}