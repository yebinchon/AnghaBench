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
struct snd_pcm {int /*<<< orphan*/  name; struct snd_hal2* private_data; } ;
struct snd_hal2 {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  hal2_capture_ops ; 
 int /*<<< orphan*/  hal2_playback_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_hal2 *hal2)
{
	struct snd_pcm *pcm;
	int err;

	/* create first pcm device with one outputs and one input */
	err = FUNC2(hal2->card, "SGI HAL2 Audio", 0, 1, 1, &pcm);
	if (err < 0)
		return err;

	pcm->private_data = hal2;
	FUNC4(pcm->name, "SGI HAL2");

	/* set operators */
	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK,
			&hal2_playback_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE,
			&hal2_capture_ops);
	FUNC1(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
					   FUNC0(GFP_KERNEL),
					   0, 1024 * 1024);

	return 0;
}