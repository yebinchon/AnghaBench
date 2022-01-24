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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {int /*<<< orphan*/ * private_data; TYPE_2__ hw; } ;
struct cs5535audio {int /*<<< orphan*/ * dmas; struct snd_pcm_substream* playback_substream; TYPE_1__* ac97; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rates; } ;

/* Variables and functions */
 size_t AC97_RATES_FRONT_DAC ; 
 size_t CS5535AUDIO_DMA_PLAYBACK ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 TYPE_2__ snd_cs5535audio_playback ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*) ; 
 struct cs5535audio* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	int err;
	struct cs5535audio *cs5535au = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	runtime->hw = snd_cs5535audio_playback;
	runtime->hw.rates = cs5535au->ac97->rates[AC97_RATES_FRONT_DAC];
	FUNC1(runtime);
	cs5535au->playback_substream = substream;
	runtime->private_data = &(cs5535au->dmas[CS5535AUDIO_DMA_PLAYBACK]);
	if ((err = FUNC0(runtime,
				SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
		return err;

	return 0;
}