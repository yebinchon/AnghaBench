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
typedef  int u16 ;
struct wm8988_priv {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8988_PWR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 struct wm8988_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8988_priv *wm8988 = FUNC3(component);
	u16 pwr_reg = FUNC4(component, WM8988_PWR1) & ~0x1c1;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* VREF, VMID=2x50k, digital enabled */
		FUNC5(component, WM8988_PWR1, pwr_reg | 0x00c0);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC2(component) == SND_SOC_BIAS_OFF) {
			FUNC1(wm8988->regmap);

			/* VREF, VMID=2x5k */
			FUNC5(component, WM8988_PWR1, pwr_reg | 0x1c1);

			/* Charge caps */
			FUNC0(100);
		}

		/* VREF, VMID=2*500k, digital stopped */
		FUNC5(component, WM8988_PWR1, pwr_reg | 0x0141);
		break;

	case SND_SOC_BIAS_OFF:
		FUNC5(component, WM8988_PWR1, 0x0000);
		break;
	}
	return 0;
}