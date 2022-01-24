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
struct TYPE_3__ {scalar_t__ capture; scalar_t__ playback; } ;
struct snd_sof_pcm {int /*<<< orphan*/  list; TYPE_2__* stream; TYPE_1__ pcm; } ;
struct snd_soc_dobj {struct snd_sof_pcm* private; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  page_table; } ;

/* Variables and functions */
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_sof_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *scomp,
			  struct snd_soc_dobj *dobj)
{
	struct snd_sof_pcm *spcm = dobj->private;

	/* free PCM DMA pages */
	if (spcm->pcm.playback)
		FUNC2(&spcm->stream[SNDRV_PCM_STREAM_PLAYBACK].page_table);

	if (spcm->pcm.capture)
		FUNC2(&spcm->stream[SNDRV_PCM_STREAM_CAPTURE].page_table);

	/* remove from list and free spcm */
	FUNC1(&spcm->list);
	FUNC0(spcm);

	return 0;
}