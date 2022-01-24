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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct aaci* private_data; } ;
struct aaci {TYPE_1__* card; struct snd_pcm* pcm; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  aaci_capture_ops ; 
 int /*<<< orphan*/  aaci_playback_ops ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct aaci *aaci)
{
	struct snd_pcm *pcm;
	int ret;

	ret = FUNC1(aaci->card, "AACI AC'97", 0, 1, 1, &pcm);
	if (ret == 0) {
		aaci->pcm = pcm;
		pcm->private_data = aaci;
		pcm->info_flags = 0;

		FUNC3(pcm->name, DRIVER_NAME, sizeof(pcm->name));

		FUNC2(pcm, SNDRV_PCM_STREAM_PLAYBACK, &aaci_playback_ops);
		FUNC2(pcm, SNDRV_PCM_STREAM_CAPTURE, &aaci_capture_ops);
		FUNC0(pcm, SNDRV_DMA_TYPE_DEV,
						      aaci->card->dev,
						      0, 64 * 1024);
	}

	return ret;
}