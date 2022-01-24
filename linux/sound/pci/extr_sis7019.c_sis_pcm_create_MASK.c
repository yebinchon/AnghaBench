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
struct snd_pcm {int /*<<< orphan*/  name; struct sis7019* private_data; } ;
struct sis7019 {int /*<<< orphan*/  pci; struct snd_pcm* pcm; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  sis_capture_ops ; 
 int /*<<< orphan*/  sis_playback_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct sis7019 *sis)
{
	struct snd_pcm *pcm;
	int rc;

	/* We have 64 voices, and the driver currently records from
	 * only one channel, though that could change in the future.
	 */
	rc = FUNC2(sis->card, "SiS7019", 0, 64, 1, &pcm);
	if (rc)
		return rc;

	pcm->private_data = sis;
	FUNC4(pcm->name, "SiS7019");
	sis->pcm = pcm;

	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, &sis_playback_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &sis_capture_ops);

	/* Try to preallocate some memory, but it's not the end of the
	 * world if this fails.
	 */
	FUNC1(pcm, SNDRV_DMA_TYPE_DEV,
				FUNC0(sis->pci), 64*1024, 128*1024);

	return 0;
}