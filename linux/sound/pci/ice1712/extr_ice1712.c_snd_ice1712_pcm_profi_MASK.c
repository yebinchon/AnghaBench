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
struct snd_pcm {TYPE_1__* streams; int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_ice1712* private_data; } ;
struct snd_ice1712 {scalar_t__ cs8427; struct snd_pcm* pcm_pro; int /*<<< orphan*/  pci; int /*<<< orphan*/  card; } ;
struct TYPE_2__ {int /*<<< orphan*/  substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  snd_ice1712_capture_pro_ops ; 
 int /*<<< orphan*/  snd_ice1712_playback_pro_ops ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct snd_ice1712 *ice, int device)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC4(ice->card, "ICE1712 multi", device, 1, 1, &pcm);
	if (err < 0)
		return err;

	FUNC5(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ice1712_playback_pro_ops);
	FUNC5(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ice1712_capture_pro_ops);

	pcm->private_data = ice;
	pcm->info_flags = 0;
	FUNC6(pcm->name, "ICE1712 multi");

	FUNC3(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC1(ice->pci), 256*1024, 256*1024);

	ice->pcm_pro = pcm;

	if (ice->cs8427) {
		/* assign channels to iec958 */
		err = FUNC0(ice->cs8427,
					      pcm->streams[0].substream,
					      pcm->streams[1].substream);
		if (err < 0)
			return err;
	}

	return FUNC2(ice);
}