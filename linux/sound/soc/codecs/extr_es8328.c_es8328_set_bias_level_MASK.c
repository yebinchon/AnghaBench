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
 int /*<<< orphan*/  ES8328_CHIPPOWER ; 
 int /*<<< orphan*/  ES8328_CONTROL1 ; 
 int ES8328_CONTROL1_ENREF ; 
 int ES8328_CONTROL1_VMIDSEL_500k ; 
 int ES8328_CONTROL1_VMIDSEL_50k ; 
 int ES8328_CONTROL1_VMIDSEL_5k ; 
 int ES8328_CONTROL1_VMIDSEL_MASK ; 
 int /*<<< orphan*/  ES8328_CONTROL2 ; 
 int ES8328_CONTROL2_OVERCURRENT_ON ; 
 int ES8328_CONTROL2_THERMAL_SHUTDOWN_ON ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* VREF, VMID=2x50k, digital enabled */
		FUNC3(component, ES8328_CHIPPOWER, 0);
		FUNC2(component, ES8328_CONTROL1,
				ES8328_CONTROL1_VMIDSEL_MASK |
				ES8328_CONTROL1_ENREF,
				ES8328_CONTROL1_VMIDSEL_50k |
				ES8328_CONTROL1_ENREF);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC1(component) == SND_SOC_BIAS_OFF) {
			FUNC2(component, ES8328_CONTROL1,
					ES8328_CONTROL1_VMIDSEL_MASK |
					ES8328_CONTROL1_ENREF,
					ES8328_CONTROL1_VMIDSEL_5k |
					ES8328_CONTROL1_ENREF);

			/* Charge caps */
			FUNC0(100);
		}

		FUNC3(component, ES8328_CONTROL2,
				ES8328_CONTROL2_OVERCURRENT_ON |
				ES8328_CONTROL2_THERMAL_SHUTDOWN_ON);

		/* VREF, VMID=2*500k, digital stopped */
		FUNC2(component, ES8328_CONTROL1,
				ES8328_CONTROL1_VMIDSEL_MASK |
				ES8328_CONTROL1_ENREF,
				ES8328_CONTROL1_VMIDSEL_500k |
				ES8328_CONTROL1_ENREF);
		break;

	case SND_SOC_BIAS_OFF:
		FUNC2(component, ES8328_CONTROL1,
				ES8328_CONTROL1_VMIDSEL_MASK |
				ES8328_CONTROL1_ENREF,
				0);
		break;
	}
	return 0;
}