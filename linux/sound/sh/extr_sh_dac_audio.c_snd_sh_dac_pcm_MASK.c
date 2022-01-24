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
struct snd_sh_dac {int /*<<< orphan*/  card; } ;
struct snd_pcm {int /*<<< orphan*/  name; struct snd_sh_dac* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_sh_dac_pcm_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_sh_dac *chip, int device)
{
	int err;
	struct snd_pcm *pcm;

	/* device should be always 0 for us */
	err = FUNC2(chip->card, "SH_DAC PCM", device, 1, 0, &pcm);
	if (err < 0)
		return err;

	pcm->private_data = chip;
	FUNC4(pcm->name, "SH_DAC PCM");
	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_sh_dac_pcm_ops);

	/* buffer size=48K */
	FUNC1(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
					  FUNC0(GFP_KERNEL),
							48 * 1024,
							48 * 1024);

	return 0;
}