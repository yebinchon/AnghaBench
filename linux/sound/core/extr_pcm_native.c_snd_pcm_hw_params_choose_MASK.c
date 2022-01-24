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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int dummy; } ;

/* Variables and functions */
#define  SNDRV_PCM_HW_PARAM_ACCESS 135 
#define  SNDRV_PCM_HW_PARAM_BUFFER_SIZE 134 
#define  SNDRV_PCM_HW_PARAM_CHANNELS 133 
#define  SNDRV_PCM_HW_PARAM_FORMAT 132 
#define  SNDRV_PCM_HW_PARAM_PERIOD_TIME 131 
#define  SNDRV_PCM_HW_PARAM_RATE 130 
#define  SNDRV_PCM_HW_PARAM_SUBFORMAT 129 
#define  SNDRV_PCM_HW_PARAM_TICK_TIME 128 
 scalar_t__ FUNC0 (int const) ; 
 scalar_t__ FUNC1 (int const) ; 
 struct snd_interval* FUNC2 (struct snd_pcm_hw_params*,int const) ; 
 struct snd_mask* FUNC3 (struct snd_pcm_hw_params*,int const) ; 
 int FUNC4 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int const,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*,int const,int /*<<< orphan*/ ,struct snd_interval*,struct snd_interval*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_substream*,int const,int /*<<< orphan*/ ,struct snd_mask*,struct snd_mask*) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *pcm,
				    struct snd_pcm_hw_params *params)
{
	static const int vars[] = {
		SNDRV_PCM_HW_PARAM_ACCESS,
		SNDRV_PCM_HW_PARAM_FORMAT,
		SNDRV_PCM_HW_PARAM_SUBFORMAT,
		SNDRV_PCM_HW_PARAM_CHANNELS,
		SNDRV_PCM_HW_PARAM_RATE,
		SNDRV_PCM_HW_PARAM_PERIOD_TIME,
		SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
		SNDRV_PCM_HW_PARAM_TICK_TIME,
		-1
	};
	const int *v;
	struct snd_mask old_mask;
	struct snd_interval old_interval;
	int changed;

	for (v = vars; *v != -1; v++) {
		/* Keep old parameter to trace. */
		if (FUNC9()) {
			if (FUNC1(*v))
				old_mask = *FUNC3(params, *v);
		}
		if (FUNC7()) {
			if (FUNC0(*v))
				old_interval = *FUNC2(params, *v);
		}
		if (*v != SNDRV_PCM_HW_PARAM_BUFFER_SIZE)
			changed = FUNC4(pcm, params, *v, NULL);
		else
			changed = FUNC5(pcm, params, *v, NULL);
		if (changed < 0)
			return changed;
		if (changed == 0)
			continue;

		/* Trace the changed parameter. */
		if (FUNC1(*v)) {
			FUNC8(pcm, *v, 0, &old_mask,
					    FUNC3(params, *v));
		}
		if (FUNC0(*v)) {
			FUNC6(pcm, *v, 0, &old_interval,
						FUNC2(params, *v));
		}
	}

	return 0;
}