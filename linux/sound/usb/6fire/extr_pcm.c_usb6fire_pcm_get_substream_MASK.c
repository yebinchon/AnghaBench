#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {scalar_t__ stream; } ;
struct pcm_substream {int dummy; } ;
struct pcm_runtime {TYPE_2__* chip; struct pcm_substream capture; struct pcm_substream playback; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct pcm_runtime* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static struct pcm_substream *FUNC2(
		struct snd_pcm_substream *alsa_sub)
{
	struct pcm_runtime *rt = FUNC1(alsa_sub);

	if (alsa_sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
		return &rt->playback;
	else if (alsa_sub->stream == SNDRV_PCM_STREAM_CAPTURE)
		return &rt->capture;
	FUNC0(&rt->chip->dev->dev, "error getting pcm substream slot.\n");
	return NULL;
}