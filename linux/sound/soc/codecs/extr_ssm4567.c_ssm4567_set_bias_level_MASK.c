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
struct ssm4567 {int dummy; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int FUNC0 (struct snd_soc_component*) ; 
 struct ssm4567* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct ssm4567*,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component,
	enum snd_soc_bias_level level)
{
	struct ssm4567 *ssm4567 = FUNC1(component);
	int ret = 0;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;
	case SND_SOC_BIAS_PREPARE:
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC0(component) == SND_SOC_BIAS_OFF)
			ret = FUNC2(ssm4567, true);
		break;
	case SND_SOC_BIAS_OFF:
		ret = FUNC2(ssm4567, false);
		break;
	}

	return ret;
}