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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct cmipci* private_data; } ;
struct cmipci {int /*<<< orphan*/  max_channels; int /*<<< orphan*/  pci; struct snd_pcm* pcm_spdif; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  snd_cmipci_capture_spdif_ops ; 
 int /*<<< orphan*/  snd_cmipci_playback_spdif_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_pcm_alt_chmaps ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct cmipci *cm, int device)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC3(cm->card, cm->card->driver, device, 1, 1, &pcm);
	if (err < 0)
		return err;

	FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_cmipci_playback_spdif_ops);
	FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_cmipci_capture_spdif_ops);

	pcm->private_data = cm;
	pcm->info_flags = 0;
	FUNC5(pcm->name, "C-Media PCI IEC958");
	cm->pcm_spdif = pcm;

	FUNC2(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC0(cm->pci), 64*1024, 128*1024);

	err = FUNC1(pcm, SNDRV_PCM_STREAM_PLAYBACK,
				     snd_pcm_alt_chmaps, cm->max_channels, 0,
				     NULL);
	if (err < 0)
		return err;

	return 0;
}