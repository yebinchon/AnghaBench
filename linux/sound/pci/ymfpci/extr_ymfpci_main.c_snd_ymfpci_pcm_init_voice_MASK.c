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
typedef  int u8 ;
typedef  int u32 ;
struct snd_ymfpci_voice {scalar_t__ number; struct snd_ymfpci_playback_bank* bank; } ;
struct snd_ymfpci_playback_bank {void* eff2_gain_end; void* eff2_gain; void* eff3_gain_end; void* eff3_gain; void* right_gain_end; void* right_gain; void* left_gain_end; void* left_gain; void* eg_gain_end; void* eg_gain; void* lpfK_end; void* lpfK; void* delta_end; void* delta; void* lpfQ; void* loop_end; void* base; void* format; } ;
struct snd_ymfpci_pcm {int use_441_slot; int buffer_size; int /*<<< orphan*/  swap_rear; scalar_t__ output_rear; scalar_t__ output_front; TYPE_3__* chip; TYPE_2__* substream; struct snd_ymfpci_voice** voices; } ;
struct snd_pcm_runtime {int rate; int channels; int dma_addr; int /*<<< orphan*/  format; } ;
typedef  void* __le32 ;
struct TYPE_6__ {scalar_t__ device_id; int src441_used; int /*<<< orphan*/  voice_lock; TYPE_1__* pcm_mixer; } ;
struct TYPE_5__ {size_t number; } ;
struct TYPE_4__ {int left; int right; } ;

/* Variables and functions */
 scalar_t__ PCI_DEVICE_ID_YAMAHA_754 ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ymfpci_playback_bank*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct snd_ymfpci_pcm *ypcm, unsigned int voiceidx,
				      struct snd_pcm_runtime *runtime,
				      int has_pcm_volume)
{
	struct snd_ymfpci_voice *voice = ypcm->voices[voiceidx];
	u32 format;
	u32 delta = FUNC4(runtime->rate);
	u32 lpfQ = FUNC6(runtime->rate);
	u32 lpfK = FUNC5(runtime->rate);
	struct snd_ymfpci_playback_bank *bank;
	unsigned int nbank;
	__le32 vol_left, vol_right;
	u8 use_left, use_right;
	unsigned long flags;

	if (FUNC2(!voice))
		return;
	if (runtime->channels == 1) {
		use_left = 1;
		use_right = 1;
	} else {
		use_left = (voiceidx & 1) == 0;
		use_right = !use_left;
	}
	if (has_pcm_volume) {
		vol_left = FUNC0(ypcm->chip->pcm_mixer
				       [ypcm->substream->number].left << 15);
		vol_right = FUNC0(ypcm->chip->pcm_mixer
					[ypcm->substream->number].right << 15);
	} else {
		vol_left = FUNC0(0x40000000);
		vol_right = FUNC0(0x40000000);
	}
	FUNC7(&ypcm->chip->voice_lock, flags);
	format = runtime->channels == 2 ? 0x00010000 : 0;
	if (FUNC3(runtime->format) == 8)
		format |= 0x80000000;
	else if (ypcm->chip->device_id == PCI_DEVICE_ID_YAMAHA_754 &&
		 runtime->rate == 44100 && runtime->channels == 2 &&
		 voiceidx == 0 && (ypcm->chip->src441_used == -1 ||
				   ypcm->chip->src441_used == voice->number)) {
		ypcm->chip->src441_used = voice->number;
		ypcm->use_441_slot = 1;
		format |= 0x10000000;
	}
	if (ypcm->chip->src441_used == voice->number &&
	    (format & 0x10000000) == 0) {
		ypcm->chip->src441_used = -1;
		ypcm->use_441_slot = 0;
	}
	if (runtime->channels == 2 && (voiceidx & 1) != 0)
		format |= 1;
	FUNC8(&ypcm->chip->voice_lock, flags);
	for (nbank = 0; nbank < 2; nbank++) {
		bank = &voice->bank[nbank];
		FUNC1(bank, 0, sizeof(*bank));
		bank->format = FUNC0(format);
		bank->base = FUNC0(runtime->dma_addr);
		bank->loop_end = FUNC0(ypcm->buffer_size);
		bank->lpfQ = FUNC0(lpfQ);
		bank->delta =
		bank->delta_end = FUNC0(delta);
		bank->lpfK =
		bank->lpfK_end = FUNC0(lpfK);
		bank->eg_gain =
		bank->eg_gain_end = FUNC0(0x40000000);

		if (ypcm->output_front) {
			if (use_left) {
				bank->left_gain =
				bank->left_gain_end = vol_left;
			}
			if (use_right) {
				bank->right_gain =
				bank->right_gain_end = vol_right;
			}
		}
		if (ypcm->output_rear) {
		        if (!ypcm->swap_rear) {
        			if (use_left) {
        				bank->eff2_gain =
        				bank->eff2_gain_end = vol_left;
        			}
        			if (use_right) {
        				bank->eff3_gain =
        				bank->eff3_gain_end = vol_right;
        			}
		        } else {
        			/* The SPDIF out channels seem to be swapped, so we have
        			 * to swap them here, too.  The rear analog out channels
        			 * will be wrong, but otherwise AC3 would not work.
        			 */
        			if (use_left) {
        				bank->eff3_gain =
        				bank->eff3_gain_end = vol_left;
        			}
        			if (use_right) {
        				bank->eff2_gain =
        				bank->eff2_gain_end = vol_right;
        			}
        		}
                }
	}
}