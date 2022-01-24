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
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  dmic_constraints ; 
 struct snd_interval* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_pcm_runtime *rtd,
			struct snd_pcm_hw_params *params)
{
	struct snd_interval *channels = FUNC1(params,
						SNDRV_PCM_HW_PARAM_CHANNELS);
	if (FUNC2(params) == 2 || FUNC0(dmic_constraints) == 2)
		channels->min = channels->max = 2;
	else
		channels->min = channels->max = 4;

	return 0;
}