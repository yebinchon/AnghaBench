#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct via82xx {int multi_devno; int playback_devno; int capture_devno; int num_devs; int intr_mask; int /*<<< orphan*/  pci; struct snd_pcm** pcms; TYPE_1__* card; TYPE_2__* ac97; } ;
struct snd_pcm_chmap {int dummy; } ;
struct snd_pcm {int /*<<< orphan*/  name; struct via82xx* private_data; } ;
struct TYPE_4__ {struct snd_pcm_chmap** chmaps; } ;
struct TYPE_3__ {int /*<<< orphan*/  shortname; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV_SG ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  VIA_MAX_BUFSIZE ; 
 int VIA_REG_CAPTURE_8233_STATUS ; 
 int VIA_REG_MULTPLAY_STATUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct via82xx*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_pcm*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct snd_pcm_chmap**) ; 
 int /*<<< orphan*/  snd_pcm_alt_chmaps ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_via8233_capture_ops ; 
 int /*<<< orphan*/  snd_via8233_multi_ops ; 
 int /*<<< orphan*/  snd_via8233_playback_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct via82xx *chip)
{
	struct snd_pcm *pcm;
	struct snd_pcm_chmap *chmap;
	int err;

	chip->multi_devno = 0;
	chip->playback_devno = 1;
	chip->capture_devno = 2;
	chip->num_devs = 3;
	chip->intr_mask = 0x03033000; /* FLAG|EOL for rec0, mc, sdx3 */

	/* PCM #0:  multi-channel playback and capture */
	err = FUNC5(chip->card, chip->card->shortname, 0, 1, 1, &pcm);
	if (err < 0)
		return err;
	FUNC6(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_via8233_multi_ops);
	FUNC6(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_via8233_capture_ops);
	pcm->private_data = chip;
	FUNC7(pcm->name, chip->card->shortname);
	chip->pcms[0] = pcm;
	/* set up playback */
	FUNC1(chip, chip->multi_devno, VIA_REG_MULTPLAY_STATUS, 4, 0);
	/* capture */
	FUNC1(chip, chip->capture_devno, VIA_REG_CAPTURE_8233_STATUS, 6, 1);

	FUNC4(pcm, SNDRV_DMA_TYPE_DEV_SG,
					      FUNC2(chip->pci),
					      64*1024, VIA_MAX_BUFSIZE);

	err = FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK,
				     snd_pcm_alt_chmaps, 6, 0,
				     &chmap);
	if (err < 0)
		return err;
	chip->ac97->chmaps[SNDRV_PCM_STREAM_PLAYBACK] = chmap;

	/* SPDIF supported? */
	if (! FUNC0(chip->ac97))
		return 0;

	/* PCM #1:  DXS3 playback (for spdif) */
	err = FUNC5(chip->card, chip->card->shortname, 1, 1, 0, &pcm);
	if (err < 0)
		return err;
	FUNC6(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_via8233_playback_ops);
	pcm->private_data = chip;
	FUNC7(pcm->name, chip->card->shortname);
	chip->pcms[1] = pcm;
	/* set up playback */
	FUNC1(chip, chip->playback_devno, 0x30, 3, 0);

	FUNC4(pcm, SNDRV_DMA_TYPE_DEV_SG,
					      FUNC2(chip->pci),
					      64*1024, VIA_MAX_BUFSIZE);
	return 0;
}