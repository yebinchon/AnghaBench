#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct TYPE_5__ {int channels_max; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  private_free; struct ct_atc_pcm* private_data; TYPE_2__ hw; } ;
struct ct_atc_pcm {int /*<<< orphan*/  timer; int /*<<< orphan*/  interrupt; struct snd_pcm_substream* substream; } ;
struct ct_atc {int /*<<< orphan*/  timer; int /*<<< orphan*/  (* spdif_out_passthru ) (struct ct_atc*,int) ;} ;
struct TYPE_4__ {scalar_t__ device; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FRONT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IEC958 ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  ct_atc_pcm_free_substream ; 
 int /*<<< orphan*/  ct_atc_pcm_interrupt ; 
 TYPE_2__ ct_pcm_playback_hw ; 
 TYPE_2__ ct_spdif_passthru_playback_hw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ct_atc_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_atc_pcm*) ; 
 struct ct_atc_pcm* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ct_atc* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct ct_atc*,int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct ct_atc *atc = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct ct_atc_pcm *apcm;
	int err;

	apcm = FUNC2(sizeof(*apcm), GFP_KERNEL);
	if (!apcm)
		return -ENOMEM;

	apcm->substream = substream;
	apcm->interrupt = ct_atc_pcm_interrupt;
	if (IEC958 == substream->pcm->device) {
		runtime->hw = ct_spdif_passthru_playback_hw;
		atc->spdif_out_passthru(atc, 1);
	} else {
		runtime->hw = ct_pcm_playback_hw;
		if (FRONT == substream->pcm->device)
			runtime->hw.channels_max = 8;
	}

	err = FUNC3(runtime,
					    SNDRV_PCM_HW_PARAM_PERIODS);
	if (err < 0)
		goto free_pcm;

	err = FUNC4(runtime,
					   SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
					   1024, UINT_MAX);
	if (err < 0)
		goto free_pcm;

	apcm->timer = FUNC0(atc->timer, apcm);
	if (!apcm->timer) {
		err = -ENOMEM;
		goto free_pcm;
	}
	runtime->private_data = apcm;
	runtime->private_free = ct_atc_pcm_free_substream;

	return 0;

free_pcm:
	FUNC1(apcm);
	return err;
}