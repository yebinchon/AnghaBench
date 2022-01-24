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
struct snd_trident_voice {int spdif; struct snd_pcm_substream* substream; } ;
struct snd_trident {scalar_t__ device; TYPE_2__* spdif_pcm_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  spdif_bits; int /*<<< orphan*/  spdif_pcm_bits; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; int /*<<< orphan*/  private_free; struct snd_trident_voice* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_1__* vd; } ;
struct TYPE_3__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_TRIDENT_VOICE_TYPE_PCM ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_trident* FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_trident_voice* FUNC3 (struct snd_trident*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_trident_pcm_free_substream ; 
 int /*<<< orphan*/  snd_trident_spdif ; 
 int /*<<< orphan*/  snd_trident_spdif_7018 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_trident *trident = FUNC2(substream);
	struct snd_trident_voice *voice;
	struct snd_pcm_runtime *runtime = substream->runtime;
	
	voice = FUNC3(trident, SNDRV_TRIDENT_VOICE_TYPE_PCM, 0, 0);
	if (voice == NULL)
		return -EAGAIN;
	voice->spdif = 1;
	voice->substream = substream;
	FUNC4(&trident->reg_lock);
	trident->spdif_pcm_bits = trident->spdif_bits;
	FUNC5(&trident->reg_lock);

	runtime->private_data = voice;
	runtime->private_free = snd_trident_pcm_free_substream;
	if (trident->device == TRIDENT_DEVICE_ID_SI7018) {
		runtime->hw = snd_trident_spdif;
	} else {
		runtime->hw = snd_trident_spdif_7018;
	}

	trident->spdif_pcm_ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	FUNC0(trident->card, SNDRV_CTL_EVENT_MASK_VALUE |
		       SNDRV_CTL_EVENT_MASK_INFO, &trident->spdif_pcm_ctl->id);

	FUNC1(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 0, 64*1024);
	return 0;
}