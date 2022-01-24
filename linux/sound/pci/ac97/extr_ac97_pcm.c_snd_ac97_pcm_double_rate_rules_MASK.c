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
struct snd_pcm_runtime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  double_rate_hw_constraint_channels ; 
 int /*<<< orphan*/  double_rate_hw_constraint_rate ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct snd_pcm_runtime *runtime)
{
	int err;

	err = FUNC0(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				  double_rate_hw_constraint_rate, NULL,
				  SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	if (err < 0)
		return err;
	err = FUNC0(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
				  double_rate_hw_constraint_channels, NULL,
				  SNDRV_PCM_HW_PARAM_RATE, -1);
	return err;
}