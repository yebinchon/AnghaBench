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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int rmask; int cmask; } ;
struct snd_pcm_hw_constraints {int dummy; } ;
struct snd_interval {int dummy; } ;
struct TYPE_2__ {struct snd_pcm_hw_constraints hw_constraints; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int SNDRV_PCM_HW_PARAM_FIRST_INTERVAL ; 
 unsigned int SNDRV_PCM_HW_PARAM_LAST_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_constraints*,unsigned int) ; 
 struct snd_interval* FUNC1 (struct snd_pcm_hw_params*,unsigned int) ; 
 scalar_t__ FUNC2 (struct snd_interval*) ; 
 int FUNC3 (struct snd_interval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,unsigned int,int /*<<< orphan*/ ,struct snd_interval*,struct snd_interval*) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				     struct snd_pcm_hw_params *params)
{
	struct snd_pcm_hw_constraints *constrs =
					&substream->runtime->hw_constraints;
	struct snd_interval *i;
	unsigned int k;
	struct snd_interval old_interval;
	int changed;

	for (k = SNDRV_PCM_HW_PARAM_FIRST_INTERVAL; k <= SNDRV_PCM_HW_PARAM_LAST_INTERVAL; k++) {
		i = FUNC1(params, k);
		if (FUNC2(i))
			return -EINVAL;

		/* This parameter is not requested to change by a caller. */
		if (!(params->rmask & (1 << k)))
			continue;

		if (FUNC5())
			old_interval = *i;

		changed = FUNC3(i, FUNC0(constrs, k));
		if (changed < 0)
			return changed;
		if (changed == 0)
			continue;

		/* Set corresponding flag so that the caller gets it. */
		FUNC4(substream, k, 0, &old_interval, i);
		params->cmask |= 1 << k;
	}

	return 0;
}