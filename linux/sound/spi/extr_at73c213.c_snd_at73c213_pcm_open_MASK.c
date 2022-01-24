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
struct TYPE_4__ {int /*<<< orphan*/  rate_max; int /*<<< orphan*/  rate_min; } ;
struct snd_pcm_runtime {TYPE_2__ hw; } ;
struct snd_at73c213 {TYPE_1__* ssc; struct snd_pcm_substream* substream; int /*<<< orphan*/  bitrate; } ;
struct TYPE_3__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ snd_at73c213_playback_hw ; 
 int FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_at73c213* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_at73c213 *chip = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	/* ensure buffer_size is a multiple of period_size */
	err = FUNC1(runtime,
					SNDRV_PCM_HW_PARAM_PERIODS);
	if (err < 0)
		return err;
	snd_at73c213_playback_hw.rate_min = chip->bitrate;
	snd_at73c213_playback_hw.rate_max = chip->bitrate;
	runtime->hw = snd_at73c213_playback_hw;
	chip->substream = substream;

	FUNC0(chip->ssc->clk);

	return 0;
}