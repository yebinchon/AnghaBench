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
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8962_PWR_MGMT_1 ; 
 int /*<<< orphan*/  WM8962_VMID_SEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* VMID 2*50k */
		FUNC2(component, WM8962_PWR_MGMT_1,
				    WM8962_VMID_SEL_MASK, 0x80);

		FUNC3(component);
		break;

	case SND_SOC_BIAS_STANDBY:
		/* VMID 2*250k */
		FUNC2(component, WM8962_PWR_MGMT_1,
				    WM8962_VMID_SEL_MASK, 0x100);

		if (FUNC1(component) == SND_SOC_BIAS_OFF)
			FUNC0(100);
		break;

	case SND_SOC_BIAS_OFF:
		break;
	}

	return 0;
}