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
struct snd_trident_voice {struct snd_trident_voice* extra; int /*<<< orphan*/ * memblk; } ;
struct TYPE_2__ {scalar_t__ entries; } ;
struct snd_trident {TYPE_1__ tlb; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_trident_voice* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 struct snd_trident* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_trident*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_trident*,struct snd_trident_voice*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_trident *trident = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_trident_voice *voice = runtime->private_data;
	struct snd_trident_voice *evoice = voice ? voice->extra : NULL;

	if (trident->tlb.entries) {
		if (voice && voice->memblk) {
			FUNC2(trident, voice->memblk);
			voice->memblk = NULL;
		}
	}
	FUNC0(substream);
	if (evoice != NULL) {
		FUNC3(trident, evoice);
		voice->extra = NULL;
	}
	return 0;
}