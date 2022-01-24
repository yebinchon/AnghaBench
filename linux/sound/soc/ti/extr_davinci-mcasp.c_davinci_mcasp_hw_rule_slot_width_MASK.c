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
struct snd_pcm_hw_rule {struct davinci_mcasp_ruledata* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct davinci_mcasp_ruledata {TYPE_1__* mcasp; } ;
struct TYPE_2__ {int slot_width; } ;

/* Variables and functions */
 int SNDRV_PCM_FORMAT_LAST ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 struct snd_mask* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mask*) ; 
 int FUNC2 (struct snd_mask*,struct snd_mask*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mask*,int) ; 
 scalar_t__ FUNC4 (struct snd_mask*,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_hw_params *params,
					    struct snd_pcm_hw_rule *rule)
{
	struct davinci_mcasp_ruledata *rd = rule->private;
	struct snd_mask *fmt = FUNC0(params, SNDRV_PCM_HW_PARAM_FORMAT);
	struct snd_mask nfmt;
	int i, slot_width;

	FUNC1(&nfmt);
	slot_width = rd->mcasp->slot_width;

	for (i = 0; i <= SNDRV_PCM_FORMAT_LAST; i++) {
		if (FUNC4(fmt, i)) {
			if (FUNC5(i) <= slot_width) {
				FUNC3(&nfmt, i);
			}
		}
	}

	return FUNC2(fmt, &nfmt);
}