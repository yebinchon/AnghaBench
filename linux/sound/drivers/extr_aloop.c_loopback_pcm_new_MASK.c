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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct loopback* private_data; } ;
struct loopback {struct snd_pcm** pcm; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  loopback_pcm_ops ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct loopback *loopback,
			    int device, int substreams)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC0(loopback->card, "Loopback PCM", device,
			  substreams, substreams, &pcm);
	if (err < 0)
		return err;
	FUNC1(pcm, SNDRV_PCM_STREAM_PLAYBACK, &loopback_pcm_ops);
	FUNC1(pcm, SNDRV_PCM_STREAM_CAPTURE, &loopback_pcm_ops);

	pcm->private_data = loopback;
	pcm->info_flags = 0;
	FUNC2(pcm->name, "Loopback PCM");

	loopback->pcm[device] = pcm;
	return 0;
}