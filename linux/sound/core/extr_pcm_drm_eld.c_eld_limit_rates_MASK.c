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
typedef  unsigned int u8 ;
struct snd_pcm_hw_rule {unsigned int* private; int /*<<< orphan*/  var; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {unsigned int min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 unsigned int* FUNC1 (unsigned int const*) ; 
 unsigned int FUNC2 (unsigned int const*) ; 
 int /*<<< orphan*/  eld_rates ; 
 struct snd_interval* FUNC3 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC4 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int const*) ; 
 int FUNC6 (struct snd_interval*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_hw_params *params,
			   struct snd_pcm_hw_rule *rule)
{
	struct snd_interval *r = FUNC3(params, rule->var);
	const struct snd_interval *c;
	unsigned int rate_mask = 7, i;
	const u8 *sad, *eld = rule->private;

	sad = FUNC1(eld);
	if (sad) {
		c = FUNC4(params, SNDRV_PCM_HW_PARAM_CHANNELS);

		for (i = FUNC2(eld); i > 0; i--, sad += 3) {
			unsigned max_channels = FUNC5(sad);

			/*
			 * Exclude SADs which do not include the
			 * requested number of channels.
			 */
			if (c->min <= max_channels)
				rate_mask |= sad[1];
		}
	}

	return FUNC6(r, FUNC0(eld_rates), eld_rates,
				 rate_mask);
}