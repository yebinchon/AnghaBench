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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; int /*<<< orphan*/  private_free; struct es1968* private_data; } ;
struct TYPE_2__ {int addr; } ;
struct es1968 {struct snd_pcm* pcm; int /*<<< orphan*/  capture_streams; int /*<<< orphan*/  playback_streams; int /*<<< orphan*/  card; TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  snd_es1968_capture_ops ; 
 int FUNC0 (struct es1968*) ; 
 int /*<<< orphan*/  snd_es1968_pcm_free ; 
 int /*<<< orphan*/  snd_es1968_playback_ops ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct es1968*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct es1968 *chip, int device)
{
	struct snd_pcm *pcm;
	int err;

	/* get DMA buffer */
	if ((err = FUNC0(chip)) < 0)
		return err;

	/* set PCMBAR */
	FUNC4(chip, 0x01FC, chip->dma.addr >> 12);
	FUNC4(chip, 0x01FD, chip->dma.addr >> 12);
	FUNC4(chip, 0x01FE, chip->dma.addr >> 12);
	FUNC4(chip, 0x01FF, chip->dma.addr >> 12);

	if ((err = FUNC1(chip->card, "ESS Maestro", device,
			       chip->playback_streams,
			       chip->capture_streams, &pcm)) < 0)
		return err;

	pcm->private_data = chip;
	pcm->private_free = snd_es1968_pcm_free;

	FUNC2(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_es1968_playback_ops);
	FUNC2(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_es1968_capture_ops);

	pcm->info_flags = 0;

	FUNC3(pcm->name, "ESS Maestro");

	chip->pcm = pcm;

	return 0;
}