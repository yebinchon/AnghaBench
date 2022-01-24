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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct es1938* private_data; } ;
struct es1938 {struct snd_pcm* pcm; int /*<<< orphan*/  pci; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_es1938_capture_ops ; 
 int /*<<< orphan*/  snd_es1938_playback_ops ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct es1938 *chip, int device)
{
	struct snd_pcm *pcm;
	int err;

	if ((err = FUNC2(chip->card, "es-1938-1946", device, 2, 1, &pcm)) < 0)
		return err;
	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_es1938_playback_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_es1938_capture_ops);
	
	pcm->private_data = chip;
	pcm->info_flags = 0;
	FUNC4(pcm->name, "ESS Solo-1");

	FUNC1(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC0(chip->pci), 64*1024, 64*1024);

	chip->pcm = pcm;
	return 0;
}