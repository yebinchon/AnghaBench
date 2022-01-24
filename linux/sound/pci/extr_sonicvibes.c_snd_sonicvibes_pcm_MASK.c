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
struct sonicvibes {int /*<<< orphan*/  pci; struct snd_pcm* pcm; int /*<<< orphan*/  card; } ;
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct sonicvibes* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_sonicvibes_capture_ops ; 
 int /*<<< orphan*/  snd_sonicvibes_playback_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct sonicvibes *sonic, int device)
{
	struct snd_pcm *pcm;
	int err;

	if ((err = FUNC3(sonic->card, "s3_86c617", device, 1, 1, &pcm)) < 0)
		return err;
	if (FUNC0(!pcm))
		return -EINVAL;

	FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_sonicvibes_playback_ops);
	FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_sonicvibes_capture_ops);

	pcm->private_data = sonic;
	pcm->info_flags = 0;
	FUNC5(pcm->name, "S3 SonicVibes");
	sonic->pcm = pcm;

	FUNC2(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC1(sonic->pci), 64*1024, 128*1024);

	return 0;
}