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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_constraint_list {unsigned int* list; int count; scalar_t__ mask; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int /*<<< orphan*/  capture; int /*<<< orphan*/  playback; struct snd_pcm_hw_constraint_list constraint; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_dai_stream*,struct snd_pcm_substream*) ; 
 struct rsnd_dai* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  rsnd_pcm_hardware ; 
 unsigned int FUNC3 (struct rsnd_dai*) ; 
 scalar_t__ FUNC4 (struct rsnd_dai*) ; 
 struct rsnd_dai_stream* FUNC5 (struct rsnd_dai*,struct snd_pcm_substream*) ; 
 unsigned int* rsnd_soc_hw_channels_list ; 
 int /*<<< orphan*/  rsnd_soc_hw_rule_channels ; 
 int /*<<< orphan*/  rsnd_soc_hw_rule_rate ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm_hw_constraint_list*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct rsnd_dai *rdai = FUNC2(dai);
	struct rsnd_dai_stream *io = FUNC5(rdai, substream);
	struct snd_pcm_hw_constraint_list *constraint = &rdai->constraint;
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int max_channels = FUNC3(rdai);
	int i;

	FUNC1(io, substream);

	/*
	 * Channel Limitation
	 * It depends on Platform design
	 */
	constraint->list	= rsnd_soc_hw_channels_list;
	constraint->count	= 0;
	constraint->mask	= 0;

	for (i = 0; i < FUNC0(rsnd_soc_hw_channels_list); i++) {
		if (rsnd_soc_hw_channels_list[i] > max_channels)
			break;
		constraint->count = i + 1;
	}

	FUNC9(substream, &rsnd_pcm_hardware);

	FUNC7(runtime, 0,
				   SNDRV_PCM_HW_PARAM_CHANNELS, constraint);

	FUNC6(runtime,
				      SNDRV_PCM_HW_PARAM_PERIODS);

	/*
	 * Sampling Rate / Channel Limitation
	 * It depends on Clock Master Mode
	 */
	if (FUNC4(rdai)) {
		int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;

		FUNC8(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				    rsnd_soc_hw_rule_rate,
				    is_play ? &rdai->playback : &rdai->capture,
				    SNDRV_PCM_HW_PARAM_CHANNELS, -1);
		FUNC8(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
				    rsnd_soc_hw_rule_channels,
				    is_play ? &rdai->playback : &rdai->capture,
				    SNDRV_PCM_HW_PARAM_RATE, -1);
	}

	return 0;
}