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
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_hw_params *params,
				       unsigned int mask)
{
	struct snd_interval *interval;
	int channels = FUNC1(mask);

	interval = FUNC0(params, SNDRV_PCM_HW_PARAM_CHANNELS);
	interval->min = channels;
	interval->max = channels;
}