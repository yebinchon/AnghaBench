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
struct snd_pcm_hw_rule {scalar_t__ private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_interval*,int,unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_hw_params *params,
					   struct snd_pcm_hw_rule *rule)
{
	unsigned int base_rate = (unsigned int)(uintptr_t)rule->private;
	struct snd_interval *rate;

	rate = FUNC0(params, SNDRV_PCM_HW_PARAM_RATE);
	return FUNC1(rate, 1, &base_rate, 0);
}