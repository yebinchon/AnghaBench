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
struct snd_ymfpci {scalar_t__ device_id; int /*<<< orphan*/  pci; struct snd_pcm* pcm2; int /*<<< orphan*/  card; } ;
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_ymfpci* private_data; } ;

/* Variables and functions */
 scalar_t__ PCI_DEVICE_ID_YAMAHA_754 ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_ymfpci_capture_ac97_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC5(struct snd_ymfpci *chip, int device)
{
	struct snd_pcm *pcm;
	int err;

	if ((err = FUNC2(chip->card, "YMFPCI - PCM2", device, 0, 1, &pcm)) < 0)
		return err;
	pcm->private_data = chip;

	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ymfpci_capture_ac97_ops);

	/* global setup */
	pcm->info_flags = 0;
	FUNC4(pcm->name, "YMFPCI - %s",
		chip->device_id == PCI_DEVICE_ID_YAMAHA_754 ? "Direct Recording" : "AC'97");
	chip->pcm2 = pcm;

	FUNC1(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC0(chip->pci), 64*1024, 256*1024);

	return 0;
}