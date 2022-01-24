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
struct snd_pcm_hw_rule {int /*<<< orphan*/  var; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int integer; int /*<<< orphan*/  max; int /*<<< orphan*/  min; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int CIP_SFC_COUNT ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/ * amdtp_rate_table ; 
 int /*<<< orphan*/ * amdtp_syt_intervals ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct snd_interval*,struct snd_interval*) ; 
 scalar_t__ FUNC6 (struct snd_interval const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_hw_params *params,
				    struct snd_pcm_hw_rule *rule)
{
	struct snd_interval *s = FUNC0(params, rule->var);
	const struct snd_interval *r =
		FUNC1(params, SNDRV_PCM_HW_PARAM_RATE);
	struct snd_interval t = {0};
	unsigned int step = 0;
	int i;

	for (i = 0; i < CIP_SFC_COUNT; ++i) {
		if (FUNC6(r, amdtp_rate_table[i]))
			step = FUNC2(step, amdtp_syt_intervals[i]);
	}

	t.min = FUNC4(s->min, step);
	t.max = FUNC3(s->max, step);
	t.integer = 1;

	return FUNC5(s, &t);
}