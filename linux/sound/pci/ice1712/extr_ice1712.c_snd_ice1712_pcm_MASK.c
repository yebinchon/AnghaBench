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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_ice1712* private_data; } ;
struct snd_ice1712 {TYPE_1__* card; int /*<<< orphan*/  pci; struct snd_pcm* pcm; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_ice1712_capture_ops ; 
 int /*<<< orphan*/  snd_ice1712_playback_ops ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (TYPE_1__*,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct snd_ice1712 *ice, int device)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC3(ice->card, "ICE1712 consumer", device, 1, 1, &pcm);
	if (err < 0)
		return err;

	FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ice1712_playback_ops);
	FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ice1712_capture_ops);

	pcm->private_data = ice;
	pcm->info_flags = 0;
	FUNC5(pcm->name, "ICE1712 consumer");
	ice->pcm = pcm;

	FUNC2(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC1(ice->pci), 64*1024, 64*1024);

	FUNC0(ice->card->dev,
		 "Consumer PCM code does not work well at the moment --jk\n");

	return 0;
}