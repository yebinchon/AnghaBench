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
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int DA9055_BIAS_EN ; 
 int /*<<< orphan*/  DA9055_REFERENCES ; 
 int DA9055_VMID_EN ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC0(component) == SND_SOC_BIAS_OFF) {
			/* Enable VMID reference & master bias */
			FUNC1(component, DA9055_REFERENCES,
					    DA9055_VMID_EN | DA9055_BIAS_EN,
					    DA9055_VMID_EN | DA9055_BIAS_EN);
		}
		break;
	case SND_SOC_BIAS_OFF:
		/* Disable VMID reference & master bias */
		FUNC1(component, DA9055_REFERENCES,
				    DA9055_VMID_EN | DA9055_BIAS_EN, 0);
		break;
	}
	return 0;
}