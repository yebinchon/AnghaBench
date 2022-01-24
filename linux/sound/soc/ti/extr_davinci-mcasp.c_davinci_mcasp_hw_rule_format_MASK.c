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
struct snd_pcm_hw_rule {struct davinci_mcasp_ruledata* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct davinci_mcasp_ruledata {TYPE_1__* mcasp; } ;
struct TYPE_2__ {int tdm_slots; int auxclk_fs_ratio; unsigned int sysclk_freq; int slot_width; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DAVINCI_MAX_RATE_ERROR_PPM ; 
 int SNDRV_PCM_FORMAT_LAST ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 struct snd_mask* FUNC3 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_mask*) ; 
 int FUNC6 (struct snd_mask*,struct snd_mask*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_mask*,int) ; 
 scalar_t__ FUNC8 (struct snd_mask*,int) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_hw_params *params,
					struct snd_pcm_hw_rule *rule)
{
	struct davinci_mcasp_ruledata *rd = rule->private;
	struct snd_mask *fmt = FUNC3(params, SNDRV_PCM_HW_PARAM_FORMAT);
	struct snd_mask nfmt;
	int rate = FUNC4(params);
	int slots = rd->mcasp->tdm_slots;
	int i, count = 0;

	FUNC5(&nfmt);

	for (i = 0; i <= SNDRV_PCM_FORMAT_LAST; i++) {
		if (FUNC8(fmt, i)) {
			uint sbits = FUNC9(i);
			unsigned int sysclk_freq;
			int ppm;

			if (rd->mcasp->auxclk_fs_ratio)
				sysclk_freq =  rate *
					       rd->mcasp->auxclk_fs_ratio;
			else
				sysclk_freq = rd->mcasp->sysclk_freq;

			if (rd->mcasp->slot_width)
				sbits = rd->mcasp->slot_width;

			ppm = FUNC1(rd->mcasp, sysclk_freq,
							 sbits * slots * rate,
							 false);
			if (FUNC0(ppm) < DAVINCI_MAX_RATE_ERROR_PPM) {
				FUNC7(&nfmt, i);
				count++;
			}
		}
	}
	FUNC2(rd->mcasp->dev,
		"%d possible sample format for %d Hz and %d tdm slots\n",
		count, rate, slots);

	return FUNC6(fmt, &nfmt);
}