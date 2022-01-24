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
struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_interval*) ; 
 int FUNC2 (struct snd_interval*,struct snd_interval*) ; 

__attribute__((used)) static int FUNC3(
		struct snd_pcm_hw_params *params, struct snd_pcm_hw_rule *rule)
{
	struct snd_interval *period_size = FUNC0(params,
						SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
	struct snd_interval frames;

	FUNC1(&frames);
	frames.min = 64;
	frames.integer = 1;

	return FUNC2(period_size, &frames);
}