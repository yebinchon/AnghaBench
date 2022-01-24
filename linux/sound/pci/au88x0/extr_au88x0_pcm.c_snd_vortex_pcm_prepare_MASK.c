#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vortex_t ;
struct snd_pcm_substream {scalar_t__ stream; int /*<<< orphan*/  pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  rate; int /*<<< orphan*/  format; scalar_t__ private_data; } ;
struct TYPE_11__ {int dma; } ;
typedef  TYPE_2__ stream_t ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ VORTEX_PCM_SPDIF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VORTEX_PCM_WT ; 
 TYPE_1__* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	vortex_t *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	stream_t *stream = (stream_t *) substream->runtime->private_data;
	int dma = stream->dma, fmt, dir;

	// set up the hardware with the current configuration.
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		dir = 1;
	else
		dir = 0;
	fmt = FUNC7(runtime->format, chip);
	FUNC2(&chip->lock);
	if (FUNC0(substream->pcm) != VORTEX_PCM_WT) {
		FUNC5(chip, dma, 1, dir, fmt,
				runtime->channels == 1 ? 0 : 1, 0);
		FUNC6(chip, dma, 0);
		if (FUNC0(substream->pcm) != VORTEX_PCM_SPDIF)
			FUNC4(chip, dma, runtime->rate, dir);
	}
#ifndef CHIP_AU8810
	else {
		FUNC8(chip, dma, 1, fmt, 0, 0);
		// FIXME: Set rate (i guess using vortex_wt_writereg() somehow).
		FUNC9(chip, dma, 0);
	}
#endif
	FUNC3(&chip->lock);
	return 0;
}