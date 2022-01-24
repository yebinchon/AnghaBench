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
struct snd_interval {unsigned int min; unsigned int max; int integer; scalar_t__ openmax; scalar_t__ openmin; } ;

/* Variables and functions */
 unsigned int SNDRV_PCM_FORMAT_LAST ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_hw_params *params,
				       struct snd_pcm_hw_rule *rule)
{
	struct snd_interval t;
	unsigned int k;
	t.min = UINT_MAX;
	t.max = 0;
	t.openmin = 0;
	t.openmax = 0;
	for (k = 0; k <= SNDRV_PCM_FORMAT_LAST; ++k) {
		int bits;
		if (! FUNC3(FUNC1(params, SNDRV_PCM_HW_PARAM_FORMAT), k))
			continue;
		bits = FUNC4(k);
		if (bits <= 0)
			continue; /* ignore invalid formats */
		if (t.min > (unsigned)bits)
			t.min = bits;
		if (t.max < (unsigned)bits)
			t.max = bits;
	}
	t.integer = 1;
	return FUNC2(FUNC0(params, rule->var), &t);
}