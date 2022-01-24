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
struct snd_gus_voice {int number; void (* private_free ) (struct snd_gus_voice*) ;int /*<<< orphan*/ * sample_ops; scalar_t__ pcm; scalar_t__ use; int /*<<< orphan*/ * private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcm_alloc_voices; } ;
struct snd_gus_card {int /*<<< orphan*/  voice_alloc; TYPE_1__ gf1; } ;

/* Variables and functions */
 int SNDRV_GF1_HANDLER_VOICE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gus_card*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct snd_gus_card * gus, struct snd_gus_voice *voice)
{
	unsigned long flags;
	void (*private_free)(struct snd_gus_voice *voice);

	if (voice == NULL || !voice->use)
		return;
	FUNC1(gus, SNDRV_GF1_HANDLER_VOICE | voice->number);
	FUNC0(gus, voice->number, voice->number);
	FUNC2(&gus->voice_alloc, flags);
	private_free = voice->private_free;
	voice->private_free = NULL;
	voice->private_data = NULL;
	if (voice->pcm)
		gus->gf1.pcm_alloc_voices--;
	voice->use = voice->pcm = 0;
	voice->sample_ops = NULL;
	FUNC3(&gus->voice_alloc, flags);
	if (private_free)
		private_free(voice);
}