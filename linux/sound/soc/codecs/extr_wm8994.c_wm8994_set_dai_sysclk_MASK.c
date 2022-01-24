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
struct wm8994_priv {int* sysclk; unsigned int* mclk; int* aifdiv; int /*<<< orphan*/ * aifclk; } ;
struct snd_soc_dai {int id; int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 int WM8994_AIF1CLK_RATE_MASK ; 
 int /*<<< orphan*/  WM8994_AIF1_RATE ; 
 int WM8994_AIF2CLK_RATE_MASK ; 
 int /*<<< orphan*/  WM8994_AIF2_RATE ; 
 int /*<<< orphan*/  WM8994_CLOCKING_2 ; 
 int WM8994_OPCLK_DIV_MASK ; 
 int WM8994_OPCLK_ENA ; 
 int /*<<< orphan*/  WM8994_POWER_MANAGEMENT_2 ; 
#define  WM8994_SYSCLK_FLL1 132 
#define  WM8994_SYSCLK_FLL2 131 
#define  WM8994_SYSCLK_MCLK1 130 
#define  WM8994_SYSCLK_MCLK2 129 
#define  WM8994_SYSCLK_OPCLK 128 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int* opclk_divs ; 
 struct wm8994_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dai *dai,
		int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component = dai->component;
	struct wm8994_priv *wm8994 = FUNC4(component);
	int i;

	switch (dai->id) {
	case 1:
	case 2:
		break;

	default:
		/* AIF3 shares clocking with AIF1/2 */
		return -EINVAL;
	}

	switch (clk_id) {
	case WM8994_SYSCLK_MCLK1:
		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_MCLK1;
		wm8994->mclk[0] = freq;
		FUNC2(dai->dev, "AIF%d using MCLK1 at %uHz\n",
			dai->id, freq);
		break;

	case WM8994_SYSCLK_MCLK2:
		/* TODO: Set GPIO AF */
		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_MCLK2;
		wm8994->mclk[1] = freq;
		FUNC2(dai->dev, "AIF%d using MCLK2 at %uHz\n",
			dai->id, freq);
		break;

	case WM8994_SYSCLK_FLL1:
		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_FLL1;
		FUNC2(dai->dev, "AIF%d using FLL1\n", dai->id);
		break;

	case WM8994_SYSCLK_FLL2:
		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_FLL2;
		FUNC2(dai->dev, "AIF%d using FLL2\n", dai->id);
		break;

	case WM8994_SYSCLK_OPCLK:
		/* Special case - a division (times 10) is given and
		 * no effect on main clocking.
		 */
		if (freq) {
			for (i = 0; i < FUNC0(opclk_divs); i++)
				if (opclk_divs[i] == freq)
					break;
			if (i == FUNC0(opclk_divs))
				return -EINVAL;
			FUNC6(component, WM8994_CLOCKING_2,
					    WM8994_OPCLK_DIV_MASK, i);
			FUNC6(component, WM8994_POWER_MANAGEMENT_2,
					    WM8994_OPCLK_ENA, WM8994_OPCLK_ENA);
		} else {
			FUNC6(component, WM8994_POWER_MANAGEMENT_2,
					    WM8994_OPCLK_ENA, 0);
		}
		break;

	default:
		return -EINVAL;
	}

	FUNC1(component);

	/*
	 * If SYSCLK will be less than 50kHz adjust AIFnCLK dividers
	 * for detection.
	 */
	if (FUNC3(wm8994->aifclk[0], wm8994->aifclk[1]) < 50000) {
		FUNC2(component->dev, "Configuring AIFs for 128fs\n");

		wm8994->aifdiv[0] = FUNC5(component, WM8994_AIF1_RATE)
			& WM8994_AIF1CLK_RATE_MASK;
		wm8994->aifdiv[1] = FUNC5(component, WM8994_AIF2_RATE)
			& WM8994_AIF1CLK_RATE_MASK;

		FUNC6(component, WM8994_AIF1_RATE,
				    WM8994_AIF1CLK_RATE_MASK, 0x1);
		FUNC6(component, WM8994_AIF2_RATE,
				    WM8994_AIF2CLK_RATE_MASK, 0x1);
	} else if (wm8994->aifdiv[0]) {
		FUNC6(component, WM8994_AIF1_RATE,
				    WM8994_AIF1CLK_RATE_MASK,
				    wm8994->aifdiv[0]);
		FUNC6(component, WM8994_AIF2_RATE,
				    WM8994_AIF2CLK_RATE_MASK,
				    wm8994->aifdiv[1]);

		wm8994->aifdiv[0] = 0;
		wm8994->aifdiv[1] = 0;
	}

	return 0;
}