#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm {struct aw2_pcm_device* private_data; int /*<<< orphan*/  name; } ;
struct aw2_pcm_device {size_t stream_number; struct aw2* chip; struct snd_pcm* pcm; } ;
struct aw2 {TYPE_1__* card; int /*<<< orphan*/  pci; struct aw2_pcm_device* device_capture; struct aw2_pcm_device* device_playback; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t NUM_STREAM_CAPTURE_ANA ; 
 size_t NUM_STREAM_PLAYBACK_ANA ; 
 size_t NUM_STREAM_PLAYBACK_DIG ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  aw2_control ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  snd_aw2_capture_ops ; 
 int /*<<< orphan*/  snd_aw2_playback_ops ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct aw2*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (TYPE_1__*,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct aw2 *chip)
{
	struct snd_pcm *pcm_playback_ana;
	struct snd_pcm *pcm_playback_num;
	struct snd_pcm *pcm_capture;
	struct aw2_pcm_device *pcm_device;
	int err = 0;

	/* Create new Alsa PCM device */

	err = FUNC5(chip->card, "Audiowerk2 analog playback", 0, 1, 0,
			  &pcm_playback_ana);
	if (err < 0) {
		FUNC0(chip->card->dev, "snd_pcm_new error (0x%X)\n", err);
		return err;
	}

	/* Creation ok */
	pcm_device = &chip->device_playback[NUM_STREAM_PLAYBACK_ANA];

	/* Set PCM device name */
	FUNC7(pcm_playback_ana->name, "Analog playback");
	/* Associate private data to PCM device */
	pcm_playback_ana->private_data = pcm_device;
	/* set operators of PCM device */
	FUNC6(pcm_playback_ana, SNDRV_PCM_STREAM_PLAYBACK,
			&snd_aw2_playback_ops);
	/* store PCM device */
	pcm_device->pcm = pcm_playback_ana;
	/* give base chip pointer to our internal pcm device
	   structure */
	pcm_device->chip = chip;
	/* Give stream number to PCM device */
	pcm_device->stream_number = NUM_STREAM_PLAYBACK_ANA;

	/* pre-allocation of buffers */
	/* Preallocate continuous pages. */
	FUNC4(pcm_playback_ana,
					      SNDRV_DMA_TYPE_DEV,
					      FUNC3(chip->pci),
					      64 * 1024, 64 * 1024);

	err = FUNC5(chip->card, "Audiowerk2 digital playback", 1, 1, 0,
			  &pcm_playback_num);

	if (err < 0) {
		FUNC0(chip->card->dev, "snd_pcm_new error (0x%X)\n", err);
		return err;
	}
	/* Creation ok */
	pcm_device = &chip->device_playback[NUM_STREAM_PLAYBACK_DIG];

	/* Set PCM device name */
	FUNC7(pcm_playback_num->name, "Digital playback");
	/* Associate private data to PCM device */
	pcm_playback_num->private_data = pcm_device;
	/* set operators of PCM device */
	FUNC6(pcm_playback_num, SNDRV_PCM_STREAM_PLAYBACK,
			&snd_aw2_playback_ops);
	/* store PCM device */
	pcm_device->pcm = pcm_playback_num;
	/* give base chip pointer to our internal pcm device
	   structure */
	pcm_device->chip = chip;
	/* Give stream number to PCM device */
	pcm_device->stream_number = NUM_STREAM_PLAYBACK_DIG;

	/* pre-allocation of buffers */
	/* Preallocate continuous pages. */
	FUNC4(pcm_playback_num,
					      SNDRV_DMA_TYPE_DEV,
					      FUNC3(chip->pci),
					      64 * 1024, 64 * 1024);

	err = FUNC5(chip->card, "Audiowerk2 capture", 2, 0, 1,
			  &pcm_capture);

	if (err < 0) {
		FUNC0(chip->card->dev, "snd_pcm_new error (0x%X)\n", err);
		return err;
	}

	/* Creation ok */
	pcm_device = &chip->device_capture[NUM_STREAM_CAPTURE_ANA];

	/* Set PCM device name */
	FUNC7(pcm_capture->name, "Capture");
	/* Associate private data to PCM device */
	pcm_capture->private_data = pcm_device;
	/* set operators of PCM device */
	FUNC6(pcm_capture, SNDRV_PCM_STREAM_CAPTURE,
			&snd_aw2_capture_ops);
	/* store PCM device */
	pcm_device->pcm = pcm_capture;
	/* give base chip pointer to our internal pcm device
	   structure */
	pcm_device->chip = chip;
	/* Give stream number to PCM device */
	pcm_device->stream_number = NUM_STREAM_CAPTURE_ANA;

	/* pre-allocation of buffers */
	/* Preallocate continuous pages. */
	FUNC4(pcm_capture,
					      SNDRV_DMA_TYPE_DEV,
					      FUNC3(chip->pci),
					      64 * 1024, 64 * 1024);

	/* Create control */
	err = FUNC1(chip->card, FUNC2(&aw2_control, chip));
	if (err < 0) {
		FUNC0(chip->card->dev, "snd_ctl_add error (0x%X)\n", err);
		return err;
	}

	return 0;
}