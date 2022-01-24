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
struct snd_wss {scalar_t__ hardware; int dma1; int dma2; struct snd_pcm* pcm; TYPE_1__* card; scalar_t__ single_dma; } ;
struct snd_pcm {int /*<<< orphan*/  name; int /*<<< orphan*/  info_flags; struct snd_wss* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_INFO_HALF_DUPLEX ; 
 int /*<<< orphan*/  SNDRV_PCM_INFO_JOINT_DUPLEX ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ WSS_HW_INTERWAVE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (TYPE_1__*,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_wss_capture_ops ; 
 int /*<<< orphan*/  FUNC3 (struct snd_wss*) ; 
 int /*<<< orphan*/  snd_wss_playback_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct snd_wss *chip, int device)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC1(chip->card, "WSS", device, 1, 1, &pcm);
	if (err < 0)
		return err;

	FUNC2(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_wss_playback_ops);
	FUNC2(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_wss_capture_ops);

	/* global setup */
	pcm->private_data = chip;
	pcm->info_flags = 0;
	if (chip->single_dma)
		pcm->info_flags |= SNDRV_PCM_INFO_HALF_DUPLEX;
	if (chip->hardware != WSS_HW_INTERWAVE)
		pcm->info_flags |= SNDRV_PCM_INFO_JOINT_DUPLEX;
	FUNC4(pcm->name, FUNC3(chip));

	FUNC0(pcm, SNDRV_DMA_TYPE_DEV,
					      chip->card->dev,
					      64*1024, chip->dma1 > 3 || chip->dma2 > 3 ? 128*1024 : 64*1024);

	chip->pcm = pcm;
	return 0;
}