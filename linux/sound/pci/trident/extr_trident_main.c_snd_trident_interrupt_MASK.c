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
struct snd_trident_voice {unsigned int stimer; unsigned int spurious_threshold; unsigned int isync_max; unsigned int isync_mark; int isync_ESO; unsigned int ESO; int /*<<< orphan*/ * substream; int /*<<< orphan*/  number; struct snd_trident_voice* extra; scalar_t__ isync2; int /*<<< orphan*/  isync3; scalar_t__ isync; int /*<<< orphan*/  pcm; } ;
struct TYPE_3__ {struct snd_trident_voice* voices; } ;
struct snd_trident {unsigned int spurious_irq_max_delta; int bDMAStart; TYPE_2__* rmidi; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  spurious_irq_count; TYPE_1__ synth; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 unsigned int ADDRESS_IRQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int MPU401_IRQ ; 
 int /*<<< orphan*/  NX_SPCTRL_SPCSO ; 
 int /*<<< orphan*/  T4D_AINT_A ; 
 int /*<<< orphan*/  T4D_AINT_B ; 
 int /*<<< orphan*/  T4D_MISCINT ; 
 int /*<<< orphan*/  T4D_MPUR0 ; 
 int /*<<< orphan*/  T4D_SBBL_SBCL ; 
 int /*<<< orphan*/  T4D_STIMER ; 
 int /*<<< orphan*/  T4D_STOP_B ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_trident*,struct snd_trident_voice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_trident*,struct snd_trident_voice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *dev_id)
{
	struct snd_trident *trident = dev_id;
	unsigned int audio_int, chn_int, stimer, channel, mask, tmp;
	int delta;
	struct snd_trident_voice *voice;

	audio_int = FUNC2(FUNC0(trident, T4D_MISCINT));
	if ((audio_int & (ADDRESS_IRQ|MPU401_IRQ)) == 0)
		return IRQ_NONE;
	if (audio_int & ADDRESS_IRQ) {
		// get interrupt status for all channels
		FUNC11(&trident->reg_lock);
		stimer = FUNC2(FUNC0(trident, T4D_STIMER)) & 0x00ffffff;
		chn_int = FUNC2(FUNC0(trident, T4D_AINT_A));
		if (chn_int == 0)
			goto __skip1;
		FUNC4(chn_int, FUNC0(trident, T4D_AINT_A));	/* ack */
	      __skip1:
		chn_int = FUNC2(FUNC0(trident, T4D_AINT_B));
		if (chn_int == 0)
			goto __skip2;
		for (channel = 63; channel >= 32; channel--) {
			mask = 1 << (channel&0x1f);
			if ((chn_int & mask) == 0)
				continue;
			voice = &trident->synth.voices[channel];
			if (!voice->pcm || voice->substream == NULL) {
				FUNC4(mask, FUNC0(trident, T4D_STOP_B));
				continue;
			}
			delta = (int)stimer - (int)voice->stimer;
			if (delta < 0)
				delta = -delta;
			if ((unsigned int)delta < voice->spurious_threshold) {
				/* do some statistics here */
				trident->spurious_irq_count++;
				if (trident->spurious_irq_max_delta < (unsigned int)delta)
					trident->spurious_irq_max_delta = delta;
				continue;
			}
			voice->stimer = stimer;
			if (voice->isync) {
				if (!voice->isync3) {
					tmp = FUNC3(FUNC0(trident, T4D_SBBL_SBCL));
					if (trident->bDMAStart & 0x40)
						tmp >>= 1;
					if (tmp > 0)
						tmp = voice->isync_max - tmp;
				} else {
					tmp = FUNC2(FUNC0(trident, NX_SPCTRL_SPCSO)) & 0x00ffffff;
				}
				if (tmp < voice->isync_mark) {
					if (tmp > 0x10)
						tmp = voice->isync_ESO - 7;
					else
						tmp = voice->isync_ESO + 2;
					/* update ESO for IRQ voice to preserve sync */
					FUNC8(trident, voice->number);
					FUNC10(trident, voice, tmp);
					FUNC7(trident, voice->number);
				}
			} else if (voice->isync2) {
				voice->isync2 = 0;
				/* write original ESO and update CSO for IRQ voice to preserve sync */
				FUNC8(trident, voice->number);
				FUNC9(trident, voice, voice->isync_mark);
				FUNC10(trident, voice, voice->ESO);
				FUNC7(trident, voice->number);
			}
#if 0
			if (voice->extra) {
				/* update CSO for extra voice to preserve sync */
				snd_trident_stop_voice(trident, voice->extra->number);
				snd_trident_write_cso_reg(trident, voice->extra, 0);
				snd_trident_start_voice(trident, voice->extra->number);
			}
#endif
			FUNC12(&trident->reg_lock);
			FUNC6(voice->substream);
			FUNC11(&trident->reg_lock);
		}
		FUNC4(chn_int, FUNC0(trident, T4D_AINT_B));	/* ack */
	      __skip2:
		FUNC12(&trident->reg_lock);
	}
	if (audio_int & MPU401_IRQ) {
		if (trident->rmidi) {
			FUNC5(irq, trident->rmidi->private_data);
		} else {
			FUNC1(FUNC0(trident, T4D_MPUR0));
		}
	}
	// outl((ST_TARGET_REACHED | MIXER_OVERFLOW | MIXER_UNDERFLOW), TRID_REG(trident, T4D_MISCINT));
	return IRQ_HANDLED;
}