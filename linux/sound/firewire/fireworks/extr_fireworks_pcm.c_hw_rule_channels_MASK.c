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
struct snd_pcm_hw_rule {unsigned int* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int integer; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/ * freq_table ; 
 unsigned int FUNC1 (unsigned int) ; 
 struct snd_interval* FUNC2 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC3 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (struct snd_interval*,struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_interval const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct snd_pcm_hw_params *params, struct snd_pcm_hw_rule *rule)
{
	unsigned int *pcm_channels = rule->private;
	struct snd_interval *c =
		FUNC2(params, SNDRV_PCM_HW_PARAM_CHANNELS);
	const struct snd_interval *r =
		FUNC3(params, SNDRV_PCM_HW_PARAM_RATE);
	struct snd_interval t = {
		.min = UINT_MAX, .max = 0, .integer = 1
	};
	unsigned int i, mode;

	for (i = 0; i < FUNC0(freq_table); i++) {
		mode = FUNC1(i);
		if (!FUNC7(r, freq_table[i]))
			continue;

		t.min = FUNC5(t.min, pcm_channels[mode]);
		t.max = FUNC4(t.max, pcm_channels[mode]);
	}

	return FUNC6(c, &t);
}