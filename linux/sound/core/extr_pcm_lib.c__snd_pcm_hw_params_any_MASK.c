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
struct snd_pcm_hw_params {unsigned int info; } ;

/* Variables and functions */
 unsigned int SNDRV_PCM_HW_PARAM_FIRST_INTERVAL ; 
 unsigned int SNDRV_PCM_HW_PARAM_FIRST_MASK ; 
 unsigned int SNDRV_PCM_HW_PARAM_LAST_INTERVAL ; 
 unsigned int SNDRV_PCM_HW_PARAM_LAST_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct snd_pcm_hw_params *params)
{
	unsigned int k;
	FUNC1(params, 0, sizeof(*params));
	for (k = SNDRV_PCM_HW_PARAM_FIRST_MASK; k <= SNDRV_PCM_HW_PARAM_LAST_MASK; k++)
		FUNC0(params, k);
	for (k = SNDRV_PCM_HW_PARAM_FIRST_INTERVAL; k <= SNDRV_PCM_HW_PARAM_LAST_INTERVAL; k++)
		FUNC0(params, k);
	params->info = ~0U;
}