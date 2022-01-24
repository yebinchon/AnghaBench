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
struct wm8960_priv {scalar_t__ clk_id; int freq_in; int sysclk; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8960_CLOCK1 ; 
 int /*<<< orphan*/  WM8960_CLOCK2 ; 
 int /*<<< orphan*/  WM8960_IFACE1 ; 
 scalar_t__ WM8960_SYSCLK_AUTO ; 
 scalar_t__ WM8960_SYSCLK_MCLK ; 
 scalar_t__ WM8960_SYSCLK_PLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wm8960_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct snd_soc_component*,int,int*,int*,int*) ; 
 int FUNC6 (struct wm8960_priv*,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int,int) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct wm8960_priv *wm8960 = FUNC2(component);
	int freq_out, freq_in;
	u16 iface1 = FUNC3(component, WM8960_IFACE1);
	int i, j, k;
	int ret;

	if (!(iface1 & (1<<6))) {
		FUNC0(component->dev,
			"Codec is slave mode, no need to configure clock\n");
		return 0;
	}

	if (wm8960->clk_id != WM8960_SYSCLK_MCLK && !wm8960->freq_in) {
		FUNC1(component->dev, "No MCLK configured\n");
		return -EINVAL;
	}

	freq_in = wm8960->freq_in;
	/*
	 * If it's sysclk auto mode, check if the MCLK can provide sysclk or
	 * not. If MCLK can provide sysclk, using MCLK to provide sysclk
	 * directly. Otherwise, auto select a available pll out frequency
	 * and set PLL.
	 */
	if (wm8960->clk_id == WM8960_SYSCLK_AUTO) {
		/* disable the PLL and using MCLK to provide sysclk */
		FUNC7(component, 0, 0);
		freq_out = freq_in;
	} else if (wm8960->sysclk) {
		freq_out = wm8960->sysclk;
	} else {
		FUNC1(component->dev, "No SYSCLK configured\n");
		return -EINVAL;
	}

	if (wm8960->clk_id != WM8960_SYSCLK_PLL) {
		ret = FUNC6(wm8960, freq_out, &i, &j, &k);
		if (ret >= 0) {
			goto configure_clock;
		} else if (wm8960->clk_id != WM8960_SYSCLK_AUTO) {
			FUNC1(component->dev, "failed to configure clock\n");
			return -EINVAL;
		}
	}

	freq_out = FUNC5(component, freq_in, &i, &j, &k);
	if (freq_out < 0) {
		FUNC1(component->dev, "failed to configure clock via PLL\n");
		return freq_out;
	}
	FUNC7(component, freq_in, freq_out);

configure_clock:
	/* configure sysclk clock */
	FUNC4(component, WM8960_CLOCK1, 3 << 1, i << 1);

	/* configure frame clock */
	FUNC4(component, WM8960_CLOCK1, 0x7 << 3, j << 3);
	FUNC4(component, WM8960_CLOCK1, 0x7 << 6, j << 6);

	/* configure bit clock */
	FUNC4(component, WM8960_CLOCK2, 0xf, k);

	return 0;
}