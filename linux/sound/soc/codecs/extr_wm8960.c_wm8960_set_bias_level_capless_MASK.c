#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct wm8960_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  mclk; int /*<<< orphan*/  clk_id; TYPE_3__* out3; TYPE_2__* rout1; TYPE_1__* lout1; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_6__ {int /*<<< orphan*/  power; } ;
struct TYPE_5__ {int /*<<< orphan*/  power; } ;
struct TYPE_4__ {int /*<<< orphan*/  power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8960_APOP1 ; 
 int /*<<< orphan*/  WM8960_APOP2 ; 
 int WM8960_BUFDCOPEN ; 
 int WM8960_DISOP ; 
 int WM8960_DRES_MASK ; 
 int WM8960_POBCTRL ; 
 int /*<<< orphan*/  WM8960_POWER1 ; 
 int /*<<< orphan*/  WM8960_POWER2 ; 
 int WM8960_PWR2_LOUT1 ; 
 int WM8960_PWR2_OUT3 ; 
 int WM8960_PWR2_ROUT1 ; 
 int WM8960_SOFT_ST ; 
 int /*<<< orphan*/  WM8960_SYSCLK_AUTO ; 
 int WM8960_VMID_MASK ; 
 int WM8960_VREF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*) ; 
 struct wm8960_priv* FUNC7 (struct snd_soc_component*) ; 
 int FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_component *component,
					 enum snd_soc_bias_level level)
{
	struct wm8960_priv *wm8960 = FUNC7(component);
	u16 pm2 = FUNC8(component, WM8960_POWER2);
	int reg, ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		switch (FUNC6(component)) {
		case SND_SOC_BIAS_STANDBY:
			/* Enable anti pop mode */
			FUNC9(component, WM8960_APOP1,
					    WM8960_POBCTRL | WM8960_SOFT_ST |
					    WM8960_BUFDCOPEN,
					    WM8960_POBCTRL | WM8960_SOFT_ST |
					    WM8960_BUFDCOPEN);

			/* Enable LOUT1, ROUT1 and OUT3 if they're enabled */
			reg = 0;
			if (wm8960->lout1 && wm8960->lout1->power)
				reg |= WM8960_PWR2_LOUT1;
			if (wm8960->rout1 && wm8960->rout1->power)
				reg |= WM8960_PWR2_ROUT1;
			if (wm8960->out3 && wm8960->out3->power)
				reg |= WM8960_PWR2_OUT3;
			FUNC9(component, WM8960_POWER2,
					    WM8960_PWR2_LOUT1 |
					    WM8960_PWR2_ROUT1 |
					    WM8960_PWR2_OUT3, reg);

			/* Enable VMID at 2*50k */
			FUNC9(component, WM8960_POWER1,
					    WM8960_VMID_MASK, 0x80);

			/* Ramp */
			FUNC4(100);

			/* Enable VREF */
			FUNC9(component, WM8960_POWER1,
					    WM8960_VREF, WM8960_VREF);

			FUNC4(100);

			if (!FUNC0(wm8960->mclk)) {
				ret = FUNC2(wm8960->mclk);
				if (ret) {
					FUNC3(component->dev,
						"Failed to enable MCLK: %d\n",
						ret);
					return ret;
				}
			}

			ret = FUNC10(component);
			if (ret)
				return ret;

			break;

		case SND_SOC_BIAS_ON:
			/*
			 * If it's sysclk auto mode, and the pll is enabled,
			 * disable the pll
			 */
			if (wm8960->clk_id == WM8960_SYSCLK_AUTO && (pm2 & 0x1))
				FUNC11(component, 0, 0);

			if (!FUNC0(wm8960->mclk))
				FUNC1(wm8960->mclk);

			/* Enable anti-pop mode */
			FUNC9(component, WM8960_APOP1,
					    WM8960_POBCTRL | WM8960_SOFT_ST |
					    WM8960_BUFDCOPEN,
					    WM8960_POBCTRL | WM8960_SOFT_ST |
					    WM8960_BUFDCOPEN);

			/* Disable VMID and VREF */
			FUNC9(component, WM8960_POWER1,
					    WM8960_VREF | WM8960_VMID_MASK, 0);
			break;

		case SND_SOC_BIAS_OFF:
			FUNC5(wm8960->regmap);
			break;
		default:
			break;
		}
		break;

	case SND_SOC_BIAS_STANDBY:
		switch (FUNC6(component)) {
		case SND_SOC_BIAS_PREPARE:
			/* Disable HP discharge */
			FUNC9(component, WM8960_APOP2,
					    WM8960_DISOP | WM8960_DRES_MASK,
					    0);

			/* Disable anti-pop features */
			FUNC9(component, WM8960_APOP1,
					    WM8960_POBCTRL | WM8960_SOFT_ST |
					    WM8960_BUFDCOPEN,
					    WM8960_POBCTRL | WM8960_SOFT_ST |
					    WM8960_BUFDCOPEN);
			break;

		default:
			break;
		}
		break;

	case SND_SOC_BIAS_OFF:
		break;
	}

	return 0;
}