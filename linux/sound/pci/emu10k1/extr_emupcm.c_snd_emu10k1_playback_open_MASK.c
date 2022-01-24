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
struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; int /*<<< orphan*/  private_free; struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm_mixer {int** send_routing; int** send_volume; int* attn; struct snd_emu10k1_pcm* epcm; } ;
struct snd_emu10k1_pcm {struct snd_pcm_substream* substream; int /*<<< orphan*/  type; struct snd_emu10k1* emu; } ;
struct TYPE_4__ {scalar_t__ internal_clock; } ;
struct snd_emu10k1 {struct snd_emu10k1_pcm_mixer* pcm_mixer; TYPE_2__ emu1010; TYPE_1__* card_capabilities; } ;
struct TYPE_3__ {scalar_t__ emu_model; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PLAYBACK_EMUVOICE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1_pcm*) ; 
 struct snd_emu10k1_pcm* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int***,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  snd_emu10k1_pcm_free_substream ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,size_t,int) ; 
 int /*<<< orphan*/  snd_emu10k1_playback ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_pcm_runtime*,int) ; 
 struct snd_emu10k1* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC7(substream);
	struct snd_emu10k1_pcm *epcm;
	struct snd_emu10k1_pcm_mixer *mix;
	struct snd_pcm_runtime *runtime = substream->runtime;
	int i, err, sample_rate;

	epcm = FUNC1(sizeof(*epcm), GFP_KERNEL);
	if (epcm == NULL)
		return -ENOMEM;
	epcm->emu = emu;
	epcm->type = PLAYBACK_EMUVOICE;
	epcm->substream = substream;
	runtime->private_data = epcm;
	runtime->private_free = snd_emu10k1_pcm_free_substream;
	runtime->hw = snd_emu10k1_playback;
	if ((err = FUNC4(runtime, SNDRV_PCM_HW_PARAM_PERIODS)) < 0) {
		FUNC0(epcm);
		return err;
	}
	if ((err = FUNC5(runtime, SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 256, UINT_MAX)) < 0) {
		FUNC0(epcm);
		return err;
	}
	if (emu->card_capabilities->emu_model && emu->emu1010.internal_clock == 0)
		sample_rate = 44100;
	else
		sample_rate = 48000;
	err = FUNC6(runtime, sample_rate);
	if (err < 0) {
		FUNC0(epcm);
		return err;
	}
	mix = &emu->pcm_mixer[substream->number];
	for (i = 0; i < 4; i++)
		mix->send_routing[0][i] = mix->send_routing[1][i] = mix->send_routing[2][i] = i;
	FUNC2(&mix->send_volume, 0, sizeof(mix->send_volume));
	mix->send_volume[0][0] = mix->send_volume[0][1] =
	mix->send_volume[1][0] = mix->send_volume[2][1] = 255;
	mix->attn[0] = mix->attn[1] = mix->attn[2] = 0xffff;
	mix->epcm = epcm;
	FUNC3(emu, substream->number, 1);
	return 0;
}