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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct ensoniq {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  spdif_default; int /*<<< orphan*/  spdif_stream; int /*<<< orphan*/ * playback1_substream; scalar_t__ spdif; struct snd_pcm_substream* playback2_substream; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ES_MODE_PLAY2 ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  snd_ensoniq_playback2 ; 
 int /*<<< orphan*/  snd_es1370_hw_constraints_clock ; 
 int /*<<< orphan*/  snd_es1371_hw_constraints_dac_clock ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct ensoniq* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct ensoniq *ensoniq = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	ensoniq->mode |= ES_MODE_PLAY2;
	ensoniq->playback2_substream = substream;
	runtime->hw = snd_ensoniq_playback2;
	FUNC2(substream);
	FUNC4(&ensoniq->reg_lock);
	if (ensoniq->spdif && ensoniq->playback1_substream == NULL)
		ensoniq->spdif_stream = ensoniq->spdif_default;
	FUNC5(&ensoniq->reg_lock);
#ifdef CHIP1370
	snd_pcm_hw_constraint_ratnums(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				      &snd_es1370_hw_constraints_clock);
#else
	FUNC0(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				      &snd_es1371_hw_constraints_dac_clock);
#endif
	return 0;
}