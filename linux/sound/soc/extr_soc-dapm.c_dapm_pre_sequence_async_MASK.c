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
struct snd_soc_dapm_context {scalar_t__ bias_level; scalar_t__ target_bias_level; scalar_t__ dev; } ;
typedef  int /*<<< orphan*/  async_cookie_t ;

/* Variables and functions */
 scalar_t__ SND_SOC_BIAS_OFF ; 
 scalar_t__ SND_SOC_BIAS_ON ; 
 int /*<<< orphan*/  SND_SOC_BIAS_PREPARE ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data, async_cookie_t cookie)
{
	struct snd_soc_dapm_context *d = data;
	int ret;

	/* If we're off and we're not supposed to go into STANDBY */
	if (d->bias_level == SND_SOC_BIAS_OFF &&
	    d->target_bias_level != SND_SOC_BIAS_OFF) {
		if (d->dev)
			FUNC1(d->dev);

		ret = FUNC2(d, SND_SOC_BIAS_STANDBY);
		if (ret != 0)
			FUNC0(d->dev,
				"ASoC: Failed to turn on bias: %d\n", ret);
	}

	/* Prepare for a transition to ON or away from ON */
	if ((d->target_bias_level == SND_SOC_BIAS_ON &&
	     d->bias_level != SND_SOC_BIAS_ON) ||
	    (d->target_bias_level != SND_SOC_BIAS_ON &&
	     d->bias_level == SND_SOC_BIAS_ON)) {
		ret = FUNC2(d, SND_SOC_BIAS_PREPARE);
		if (ret != 0)
			FUNC0(d->dev,
				"ASoC: Failed to prepare bias: %d\n", ret);
	}
}