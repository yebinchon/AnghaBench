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
struct wm8728_priv {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8728_DACCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 struct wm8728_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8728_priv *wm8728 = FUNC2(component);
	u16 reg;

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
	case SND_SOC_BIAS_STANDBY:
		if (FUNC1(component) == SND_SOC_BIAS_OFF) {
			/* Power everything up... */
			reg = FUNC3(component, WM8728_DACCTL);
			FUNC4(component, WM8728_DACCTL, reg & ~0x4);

			/* ..then sync in the register cache. */
			FUNC0(wm8728->regmap);
		}
		break;

	case SND_SOC_BIAS_OFF:
		reg = FUNC3(component, WM8728_DACCTL);
		FUNC4(component, WM8728_DACCTL, reg | 0x4);
		break;
	}
	return 0;
}