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
struct snd_trident_voice {int ESO; int Delta; int FMC; int RVol; int CVol; int GVSel; int Pan; int Vol; int number; int isync2; int isync_mark; scalar_t__ Attribute; scalar_t__ FMS; scalar_t__ Alpha; scalar_t__ EC; int /*<<< orphan*/  CTRL; scalar_t__ CSO; int /*<<< orphan*/  LBA; int /*<<< orphan*/  spurious_threshold; scalar_t__ foldback_chan; TYPE_1__* memblk; struct snd_trident_voice* extra; } ;
struct snd_trident {scalar_t__ device; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; int period_size; int /*<<< orphan*/  dma_addr; struct snd_trident_voice* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 scalar_t__ T4D_RCI ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct snd_trident* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_trident*,struct snd_trident_voice*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_trident *trident = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_trident_voice *voice = runtime->private_data;
	struct snd_trident_voice *evoice = voice->extra;

	FUNC6(&trident->reg_lock);

	/* Set channel buffer Address */
	if (voice->memblk)
		voice->LBA = voice->memblk->offset;
	else
		voice->LBA = runtime->dma_addr;

	/* set target ESO for channel */
	voice->ESO = runtime->buffer_size - 1;	/* in samples */

	/* set sample rate */
	voice->Delta = 0x1000;
	voice->spurious_threshold = FUNC4(48000, runtime->period_size);

	voice->CSO = 0;
	voice->CTRL = FUNC3(substream);
	voice->FMC = 3;
	voice->RVol = 0x7f;
	voice->CVol = 0x7f;
	voice->GVSel = 1;
	voice->Pan = 0x7f;	/* mute */
	voice->Vol = 0x3ff;	/* mute */
	voice->EC = 0;
	voice->Alpha = 0;
	voice->FMS = 0;
	voice->Attribute = 0;

	/* set up capture channel */
	FUNC1(((voice->number & 0x3f) | 0x80), FUNC0(trident, T4D_RCI + voice->foldback_chan));

	FUNC5(trident, voice);

	if (evoice != NULL) {
		evoice->Delta = voice->Delta;
		evoice->spurious_threshold = voice->spurious_threshold;
		evoice->LBA = voice->LBA;
		evoice->CSO = 0;
		evoice->ESO = (runtime->period_size * 2) + 4 - 1; /* in samples */
		evoice->CTRL = voice->CTRL;
		evoice->FMC = 3;
		evoice->GVSel = trident->device == TRIDENT_DEVICE_ID_SI7018 ? 0 : 1;
		evoice->EC = 0;
		evoice->Alpha = 0;
		evoice->FMS = 0;
		evoice->Vol = 0x3ff;			/* mute */
		evoice->RVol = evoice->CVol = 0x7f;	/* mute */
		evoice->Pan = 0x7f;			/* mute */
		evoice->Attribute = 0;
		FUNC5(trident, evoice);
		evoice->isync2 = 1;
		evoice->isync_mark = runtime->period_size;
		evoice->ESO = (runtime->period_size * 2) - 1;
	}

	FUNC7(&trident->reg_lock);
	return 0;
}