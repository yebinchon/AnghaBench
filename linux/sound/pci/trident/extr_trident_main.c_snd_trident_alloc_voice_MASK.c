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
struct snd_trident_voice {int use; int pcm; int synth; int client; int port; int /*<<< orphan*/ * memblk; int /*<<< orphan*/ * substream; scalar_t__ spdif; scalar_t__ capture; } ;
struct TYPE_2__ {struct snd_trident_voice* voices; } ;
struct snd_trident {int /*<<< orphan*/  voice_alloc; TYPE_1__ synth; } ;

/* Variables and functions */
 int SNDRV_TRIDENT_VOICE_TYPE_MIDI ; 
 int SNDRV_TRIDENT_VOICE_TYPE_PCM ; 
 int SNDRV_TRIDENT_VOICE_TYPE_SYNTH ; 
 int FUNC0 (struct snd_trident*) ; 
 int FUNC1 (struct snd_trident*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

struct snd_trident_voice *FUNC4(struct snd_trident * trident, int type, int client, int port)
{
	struct snd_trident_voice *pvoice;
	unsigned long flags;
	int idx;

	FUNC2(&trident->voice_alloc, flags);
	if (type == SNDRV_TRIDENT_VOICE_TYPE_PCM) {
		idx = FUNC0(trident);
		if(idx < 0) {
			FUNC3(&trident->voice_alloc, flags);
			return NULL;
		}
		pvoice = &trident->synth.voices[idx];
		pvoice->use = 1;
		pvoice->pcm = 1;
		pvoice->capture = 0;
		pvoice->spdif = 0;
		pvoice->memblk = NULL;
		pvoice->substream = NULL;
		FUNC3(&trident->voice_alloc, flags);
		return pvoice;
	}
	if (type == SNDRV_TRIDENT_VOICE_TYPE_SYNTH) {
		idx = FUNC1(trident);
		if(idx < 0) {
			FUNC3(&trident->voice_alloc, flags);
			return NULL;
		}
		pvoice = &trident->synth.voices[idx];
		pvoice->use = 1;
		pvoice->synth = 1;
		pvoice->client = client;
		pvoice->port = port;
		pvoice->memblk = NULL;
		FUNC3(&trident->voice_alloc, flags);
		return pvoice;
	}
	if (type == SNDRV_TRIDENT_VOICE_TYPE_MIDI) {
	}
	FUNC3(&trident->voice_alloc, flags);
	return NULL;
}