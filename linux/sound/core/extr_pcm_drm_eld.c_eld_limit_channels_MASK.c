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
struct snd_interval {int min; int max; int integer; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 unsigned int* FUNC2 (unsigned int const*) ; 
 unsigned int FUNC3 (unsigned int const*) ; 
 scalar_t__* eld_rates ; 
 struct snd_interval* FUNC4 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC5 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int const*) ; 
 int FUNC8 (struct snd_interval*,struct snd_interval*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_hw_params *params,
			      struct snd_pcm_hw_rule *rule)
{
	struct snd_interval *c = FUNC4(params, rule->var);
	const struct snd_interval *r;
	struct snd_interval t = { .min = 1, .max = 2, .integer = 1, };
	unsigned int i;
	const u8 *sad, *eld = rule->private;

	sad = FUNC2(eld);
	if (sad) {
		unsigned int rate_mask = 0;

		/* Convert the rate interval to a mask */
		r = FUNC5(params, SNDRV_PCM_HW_PARAM_RATE);
		for (i = 0; i < FUNC0(eld_rates); i++)
			if (r->min <= eld_rates[i] && r->max >= eld_rates[i])
				rate_mask |= FUNC1(i);

		for (i = FUNC3(eld); i > 0; i--, sad += 3)
			if (rate_mask & sad[1])
				t.max = FUNC6(t.max, FUNC7(sad));
	}

	return FUNC8(c, &t);
}