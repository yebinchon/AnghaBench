#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  rate; int /*<<< orphan*/  format; } ;
struct snd_emu10k1_voice {int number; TYPE_1__* epcm; } ;
struct snd_emu10k1_pcm_mixer {int /*<<< orphan*/ ** send_volume; int /*<<< orphan*/ ** send_routing; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct snd_emu10k1 {unsigned int delay_pcm_irq; unsigned int address_mode; int /*<<< orphan*/  reg_lock; TYPE_3__ silent_page; TYPE_2__* card_capabilities; scalar_t__ audigy; } ;
typedef  int /*<<< orphan*/  send_routing ;
typedef  int /*<<< orphan*/  send_amount ;
struct TYPE_5__ {scalar_t__ emu_model; } ;
struct TYPE_4__ {unsigned int ccca_start_addr; struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATKHLDM ; 
 int /*<<< orphan*/  ATKHLDV ; 
 int /*<<< orphan*/  A_FXRT1 ; 
 int /*<<< orphan*/  A_FXRT2 ; 
 int /*<<< orphan*/  A_SENDAMOUNTS ; 
 int /*<<< orphan*/  CCCA ; 
 unsigned int CCCA_8BITSELECT ; 
 int /*<<< orphan*/  CPF ; 
 int CPF_STEREO_MASK ; 
 int /*<<< orphan*/  CVCF ; 
 int /*<<< orphan*/  DCYSUSM ; 
 int /*<<< orphan*/  DSL ; 
 int /*<<< orphan*/  ENVVAL ; 
 int /*<<< orphan*/  ENVVOL ; 
 int /*<<< orphan*/  FM2FRQ2 ; 
 int /*<<< orphan*/  FMMOD ; 
 int /*<<< orphan*/  FXRT ; 
 int /*<<< orphan*/  LFOVAL1 ; 
 int /*<<< orphan*/  LFOVAL2 ; 
 int /*<<< orphan*/  MAPA ; 
 int /*<<< orphan*/  MAPB ; 
 unsigned int MAP_PTI_MASK0 ; 
 unsigned int MAP_PTI_MASK1 ; 
 int /*<<< orphan*/  PEFE_FILTERAMOUNT ; 
 int /*<<< orphan*/  PEFE_PITCHAMOUNT ; 
 unsigned int PITCH_48000 ; 
 int /*<<< orphan*/  PSST ; 
 int /*<<< orphan*/  PTRX ; 
 int /*<<< orphan*/  TREMFRQ ; 
 int /*<<< orphan*/  VTFT ; 
 int /*<<< orphan*/  Z1 ; 
 int /*<<< orphan*/  Z2 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int,int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (unsigned char*) ; 
 int FUNC6 (unsigned char*) ; 
 int FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu10k1*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct snd_emu10k1 *emu,
				       int master, int extra,
				       struct snd_emu10k1_voice *evoice,
				       unsigned int start_addr,
				       unsigned int end_addr,
				       struct snd_emu10k1_pcm_mixer *mix)
{
	struct snd_pcm_substream *substream = evoice->epcm->substream;
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int silent_page, tmp;
	int voice, stereo, w_16;
	unsigned char send_amount[8];
	unsigned char send_routing[8];
	unsigned long flags;
	unsigned int pitch_target;
	unsigned int ccis;

	voice = evoice->number;
	stereo = runtime->channels == 2;
	w_16 = FUNC9(runtime->format) == 16;

	if (!extra && stereo) {
		start_addr >>= 1;
		end_addr >>= 1;
	}
	if (w_16) {
		start_addr >>= 1;
		end_addr >>= 1;
	}

	FUNC10(&emu->reg_lock, flags);

	/* volume parameters */
	if (extra) {
		FUNC4(send_routing, 0, sizeof(send_routing));
		send_routing[0] = 0;
		send_routing[1] = 1;
		send_routing[2] = 2;
		send_routing[3] = 3;
		FUNC4(send_amount, 0, sizeof(send_amount));
	} else {
		/* mono, left, right (master voice = left) */
		tmp = stereo ? (master ? 1 : 2) : 0;
		FUNC3(send_routing, &mix->send_routing[tmp][0], 8);
		FUNC3(send_amount, &mix->send_volume[tmp][0], 8);
	}

	ccis = FUNC1(stereo, w_16);
	
	if (master) {
		evoice->epcm->ccca_start_addr = start_addr + ccis;
		if (extra) {
			start_addr += ccis;
			end_addr += ccis + emu->delay_pcm_irq;
		}
		if (stereo && !extra) {
			FUNC8(emu, CPF, voice, CPF_STEREO_MASK);
			FUNC8(emu, CPF, (voice + 1), CPF_STEREO_MASK);
		} else {
			FUNC8(emu, CPF, voice, 0);
		}
	}

	/* setup routing */
	if (emu->audigy) {
		FUNC8(emu, A_FXRT1, voice,
				      FUNC5(send_routing));
		FUNC8(emu, A_FXRT2, voice,
				      FUNC6(send_routing));
		FUNC8(emu, A_SENDAMOUNTS, voice,
				      ((unsigned int)send_amount[4] << 24) |
				      ((unsigned int)send_amount[5] << 16) |
				      ((unsigned int)send_amount[6] << 8) |
				      (unsigned int)send_amount[7]);
	} else
		FUNC8(emu, FXRT, voice,
				      FUNC7(send_routing));
	/* Stop CA */
	/* Assumption that PT is already 0 so no harm overwriting */
	FUNC8(emu, PTRX, voice, (send_amount[0] << 8) | send_amount[1]);
	FUNC8(emu, DSL, voice, end_addr | (send_amount[3] << 24));
	FUNC8(emu, PSST, voice,
			(start_addr + (extra ? emu->delay_pcm_irq : 0)) |
			(send_amount[2] << 24));
	if (emu->card_capabilities->emu_model)
		pitch_target = PITCH_48000; /* Disable interpolators on emu1010 card */
	else 
		pitch_target = FUNC0(runtime->rate);
	if (extra)
		FUNC8(emu, CCCA, voice, start_addr |
			      FUNC2(pitch_target) |
			      (w_16 ? 0 : CCCA_8BITSELECT));
	else
		FUNC8(emu, CCCA, voice, (start_addr + ccis) |
			      FUNC2(pitch_target) |
			      (w_16 ? 0 : CCCA_8BITSELECT));
	/* Clear filter delay memory */
	FUNC8(emu, Z1, voice, 0);
	FUNC8(emu, Z2, voice, 0);
	/* invalidate maps */
	silent_page = ((unsigned int)emu->silent_page.addr << emu->address_mode) | (emu->address_mode ? MAP_PTI_MASK1 : MAP_PTI_MASK0);
	FUNC8(emu, MAPA, voice, silent_page);
	FUNC8(emu, MAPB, voice, silent_page);
	/* modulation envelope */
	FUNC8(emu, CVCF, voice, 0xffff);
	FUNC8(emu, VTFT, voice, 0xffff);
	FUNC8(emu, ATKHLDM, voice, 0);
	FUNC8(emu, DCYSUSM, voice, 0x007f);
	FUNC8(emu, LFOVAL1, voice, 0x8000);
	FUNC8(emu, LFOVAL2, voice, 0x8000);
	FUNC8(emu, FMMOD, voice, 0);
	FUNC8(emu, TREMFRQ, voice, 0);
	FUNC8(emu, FM2FRQ2, voice, 0);
	FUNC8(emu, ENVVAL, voice, 0x8000);
	/* volume envelope */
	FUNC8(emu, ATKHLDV, voice, 0x7f7f);
	FUNC8(emu, ENVVOL, voice, 0x0000);
	/* filter envelope */
	FUNC8(emu, PEFE_FILTERAMOUNT, voice, 0x7f);
	/* pitch envelope */
	FUNC8(emu, PEFE_PITCHAMOUNT, voice, 0);

	FUNC11(&emu->reg_lock, flags);
}