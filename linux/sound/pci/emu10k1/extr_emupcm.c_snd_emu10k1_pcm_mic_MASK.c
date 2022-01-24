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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_emu10k1* private_data; } ;
struct snd_emu10k1 {int /*<<< orphan*/  pci; struct snd_pcm* pcm_mic; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_emu10k1_capture_mic_ops ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct snd_emu10k1 *emu, int device)
{
	struct snd_pcm *pcm;
	int err;

	if ((err = FUNC2(emu->card, "emu10k1 mic", device, 0, 1, &pcm)) < 0)
		return err;

	pcm->private_data = emu;

	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_emu10k1_capture_mic_ops);

	pcm->info_flags = 0;
	FUNC4(pcm->name, "Mic Capture");
	emu->pcm_mic = pcm;

	FUNC1(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC0(emu->pci),
					      64*1024, 64*1024);

	return 0;
}