#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ format; int rate; struct m3_dma* private_data; } ;
struct snd_m3 {int /*<<< orphan*/  reg_lock; } ;
struct m3_dma {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ; 
 scalar_t__ SNDRV_PCM_FORMAT_U8 ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_m3*,struct m3_dma*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ; 
 struct snd_m3* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct snd_pcm_substream *subs)
{
	struct snd_m3 *chip = FUNC5(subs);
	struct snd_pcm_runtime *runtime = subs->runtime;
	struct m3_dma *s = runtime->private_data;

	if (FUNC0(!s))
		return -ENXIO;

	if (runtime->format != SNDRV_PCM_FORMAT_U8 &&
	    runtime->format != SNDRV_PCM_FORMAT_S16_LE)
		return -EINVAL;
	if (runtime->rate > 48000 ||
	    runtime->rate < 8000)
		return -EINVAL;

	FUNC6(&chip->reg_lock);

	FUNC2(chip, s, subs);

	if (subs->stream == SNDRV_PCM_STREAM_PLAYBACK)
		FUNC4(chip, s, subs);
	else
		FUNC1(chip, s, subs);

	FUNC3(chip, s, runtime);

	FUNC7(&chip->reg_lock);

	return 0;
}