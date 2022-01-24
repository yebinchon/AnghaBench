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
struct wm8971_priv {int /*<<< orphan*/  charge_work; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8971_PWR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*) ; 
 struct wm8971_priv* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
	enum snd_soc_bias_level level)
{
	struct wm8971_priv *wm8971 = FUNC6(component);
	u16 pwr_reg = FUNC7(component, WM8971_PWR1) & 0xfe3e;

	switch (level) {
	case SND_SOC_BIAS_ON:
		/* set vmid to 50k and unmute dac */
		FUNC8(component, WM8971_PWR1, pwr_reg | 0x00c1);
		break;
	case SND_SOC_BIAS_PREPARE:
		/* Wait until fully charged */
		FUNC1(&wm8971->charge_work);
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC5(component) == SND_SOC_BIAS_OFF) {
			FUNC4(component);
			/* charge output caps - set vmid to 5k for quick power up */
			FUNC8(component, WM8971_PWR1, pwr_reg | 0x01c0);
			FUNC3(system_power_efficient_wq,
				&wm8971->charge_work, FUNC2(1000));
		} else {
			/* mute dac and set vmid to 500k, enable VREF */
			FUNC8(component, WM8971_PWR1, pwr_reg | 0x0140);
		}

		break;
	case SND_SOC_BIAS_OFF:
		FUNC0(&wm8971->charge_work);
		FUNC8(component, WM8971_PWR1, 0x0001);
		break;
	}
	return 0;
}