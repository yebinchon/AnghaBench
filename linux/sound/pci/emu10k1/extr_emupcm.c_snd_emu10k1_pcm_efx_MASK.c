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
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_emu10k1* private_data; } ;
struct TYPE_4__ {int device; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct snd_emu10k1 {int* efx_voices_mask; int /*<<< orphan*/  pci; int /*<<< orphan*/  card; TYPE_1__* card_capabilities; scalar_t__ audigy; struct snd_pcm* pcm_efx; } ;
struct TYPE_3__ {scalar_t__ emu_model; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC1 (int /*<<< orphan*/ *,struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_emu10k1_capture_efx_ops ; 
 int /*<<< orphan*/  snd_emu10k1_fx8010_playback_ops ; 
 int /*<<< orphan*/  snd_emu10k1_pcm_efx_voices_mask ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

int FUNC7(struct snd_emu10k1 *emu, int device)
{
	struct snd_pcm *pcm;
	struct snd_kcontrol *kctl;
	int err;

	if ((err = FUNC4(emu->card, "emu10k1 efx", device, 8, 1, &pcm)) < 0)
		return err;

	pcm->private_data = emu;

	FUNC5(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_emu10k1_fx8010_playback_ops);
	FUNC5(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_emu10k1_capture_efx_ops);

	pcm->info_flags = 0;
	FUNC6(pcm->name, "Multichannel Capture/PT Playback");
	emu->pcm_efx = pcm;

	/* EFX capture - record the "FXBUS2" channels, by default we connect the EXTINs 
	 * to these
	 */	
	
	/* emu->efx_voices_mask[0] = FXWC_DEFAULTROUTE_C | FXWC_DEFAULTROUTE_A; */
	if (emu->audigy) {
		emu->efx_voices_mask[0] = 0;
		if (emu->card_capabilities->emu_model)
			/* Pavel Hofman - 32 voices will be used for
			 * capture (write mode) -
			 * each bit = corresponding voice
			 */
			emu->efx_voices_mask[1] = 0xffffffff;
		else
			emu->efx_voices_mask[1] = 0xffff;
	} else {
		emu->efx_voices_mask[0] = 0xffff0000;
		emu->efx_voices_mask[1] = 0;
	}
	/* For emu1010, the control has to set 32 upper bits (voices)
	 * out of the 64 bits (voices) to true for the 16-channels capture
	 * to work correctly. Correct A_FXWC2 initial value (0xffffffff)
	 * is already defined but the snd_emu10k1_pcm_efx_voices_mask
	 * control can override this register's value.
	 */
	kctl = FUNC1(&snd_emu10k1_pcm_efx_voices_mask, emu);
	if (!kctl)
		return -ENOMEM;
	kctl->id.device = device;
	err = FUNC0(emu->card, kctl);
	if (err < 0)
		return err;

	FUNC3(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC2(emu->pci),
					      64*1024, 64*1024);

	return 0;
}