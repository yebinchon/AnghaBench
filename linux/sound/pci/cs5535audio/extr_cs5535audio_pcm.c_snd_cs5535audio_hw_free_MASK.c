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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cs5535audio_dma {scalar_t__ pcm_open_flag; } ;
struct cs5535audio {int /*<<< orphan*/  ac97; struct snd_pcm_substream* playback_substream; } ;
struct TYPE_2__ {struct cs5535audio_dma* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_PCM_FRONT_DAC_RATE ; 
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct cs5535audio*,struct cs5535audio_dma*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 struct cs5535audio* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct cs5535audio *cs5535au = FUNC3(substream);
	struct cs5535audio_dma *dma = substream->runtime->private_data;

	if (dma->pcm_open_flag) {
		if (substream == cs5535au->playback_substream)
			FUNC1(cs5535au->ac97,
					AC97_PCM_FRONT_DAC_RATE, 0);
		else
			FUNC1(cs5535au->ac97,
					AC97_PCM_LR_ADC_RATE, 0);
		dma->pcm_open_flag = 0;
	}
	FUNC0(cs5535au, dma, substream);
	return FUNC2(substream);
}