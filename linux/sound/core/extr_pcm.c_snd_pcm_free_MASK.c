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
struct snd_pcm {int /*<<< orphan*/ * streams; int /*<<< orphan*/  (* private_free ) (struct snd_pcm*) ;int /*<<< orphan*/  internal; } ;

/* Variables and functions */
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm*) ; 
 int /*<<< orphan*/  n_unregister ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm *pcm)
{
	if (!pcm)
		return 0;
	if (!pcm->internal)
		FUNC1(pcm, n_unregister);
	if (pcm->private_free)
		pcm->private_free(pcm);
	FUNC3(pcm);
	FUNC2(&pcm->streams[SNDRV_PCM_STREAM_PLAYBACK]);
	FUNC2(&pcm->streams[SNDRV_PCM_STREAM_CAPTURE]);
	FUNC0(pcm);
	return 0;
}