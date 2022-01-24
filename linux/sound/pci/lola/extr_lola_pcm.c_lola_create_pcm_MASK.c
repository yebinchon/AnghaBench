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
struct snd_pcm {struct lola* private_data; int /*<<< orphan*/  name; } ;
struct lola {int /*<<< orphan*/  pci; TYPE_1__* pcm; int /*<<< orphan*/  card; } ;
struct TYPE_2__ {scalar_t__ num_streams; int /*<<< orphan*/  bdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV_SG ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  lola_pcm_ops ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC6(struct lola *chip)
{
	struct snd_pcm *pcm;
	int i, err;

	for (i = 0; i < 2; i++) {
		err = FUNC0(SNDRV_DMA_TYPE_DEV,
					  FUNC1(chip->pci),
					  PAGE_SIZE, &chip->pcm[i].bdl);
		if (err < 0)
			return err;
	}

	err = FUNC3(chip->card, "Digigram Lola", 0,
			  chip->pcm[SNDRV_PCM_STREAM_PLAYBACK].num_streams,
			  chip->pcm[SNDRV_PCM_STREAM_CAPTURE].num_streams,
			  &pcm);
	if (err < 0)
		return err;
	FUNC5(pcm->name, "Digigram Lola", sizeof(pcm->name));
	pcm->private_data = chip;
	for (i = 0; i < 2; i++) {
		if (chip->pcm[i].num_streams)
			FUNC4(pcm, i, &lola_pcm_ops);
	}
	/* buffer pre-allocation */
	FUNC2(pcm, SNDRV_DMA_TYPE_DEV_SG,
					      FUNC1(chip->pci),
					      1024 * 64, 32 * 1024 * 1024);
	return 0;
}