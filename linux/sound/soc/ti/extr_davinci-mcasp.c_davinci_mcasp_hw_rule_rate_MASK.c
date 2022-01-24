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
typedef  int uint ;
struct snd_pcm_hw_rule {int /*<<< orphan*/  var; struct davinci_mcasp_ruledata* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int empty; int min; int max; } ;
struct davinci_mcasp_ruledata {TYPE_1__* mcasp; } ;
struct TYPE_2__ {int tdm_slots; int slot_width; int auxclk_fs_ratio; unsigned int sysclk_freq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ DAVINCI_MAX_RATE_ERROR_PPM ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,unsigned int,int,int) ; 
 int* davinci_mcasp_dai_rates ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int,int,int) ; 
 struct snd_interval* FUNC4 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_interval*) ; 
 int FUNC7 (struct snd_interval*,struct snd_interval*) ; 
 scalar_t__ FUNC8 (struct snd_interval*,int) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_hw_params *params,
				      struct snd_pcm_hw_rule *rule)
{
	struct davinci_mcasp_ruledata *rd = rule->private;
	struct snd_interval *ri =
		FUNC4(params, SNDRV_PCM_HW_PARAM_RATE);
	int sbits = FUNC5(params);
	int slots = rd->mcasp->tdm_slots;
	struct snd_interval range;
	int i;

	if (rd->mcasp->slot_width)
		sbits = rd->mcasp->slot_width;

	FUNC6(&range);
	range.empty = 1;

	for (i = 0; i < FUNC0(davinci_mcasp_dai_rates); i++) {
		if (FUNC8(ri, davinci_mcasp_dai_rates[i])) {
			uint bclk_freq = sbits * slots *
					 davinci_mcasp_dai_rates[i];
			unsigned int sysclk_freq;
			int ppm;

			if (rd->mcasp->auxclk_fs_ratio)
				sysclk_freq =  davinci_mcasp_dai_rates[i] *
					       rd->mcasp->auxclk_fs_ratio;
			else
				sysclk_freq = rd->mcasp->sysclk_freq;

			ppm = FUNC2(rd->mcasp, sysclk_freq,
							 bclk_freq, false);
			if (FUNC1(ppm) < DAVINCI_MAX_RATE_ERROR_PPM) {
				if (range.empty) {
					range.min = davinci_mcasp_dai_rates[i];
					range.empty = 0;
				}
				range.max = davinci_mcasp_dai_rates[i];
			}
		}
	}

	FUNC3(rd->mcasp->dev,
		"Frequencies %d-%d -> %d-%d for %d sbits and %d tdm slots\n",
		ri->min, ri->max, range.min, range.max, sbits, slots);

	return FUNC7(FUNC4(params, rule->var),
				   &range);
}