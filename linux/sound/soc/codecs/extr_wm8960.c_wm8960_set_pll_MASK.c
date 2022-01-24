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
struct snd_soc_component {int dummy; } ;
struct _pll_div {int pre_div; int n; int k; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8960_CLOCK1 ; 
 int /*<<< orphan*/  WM8960_PLL1 ; 
 int /*<<< orphan*/  WM8960_PLL2 ; 
 int /*<<< orphan*/  WM8960_PLL3 ; 
 int /*<<< orphan*/  WM8960_PLL4 ; 
 int /*<<< orphan*/  WM8960_POWER2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int,unsigned int,struct _pll_div*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
		unsigned int freq_in, unsigned int freq_out)
{
	u16 reg;
	static struct _pll_div pll_div;
	int ret;

	if (freq_in && freq_out) {
		ret = FUNC1(freq_in, freq_out, &pll_div);
		if (ret != 0)
			return ret;
	}

	/* Disable the PLL: even if we are changing the frequency the
	 * PLL needs to be disabled while we do so. */
	FUNC3(component, WM8960_CLOCK1, 0x1, 0);
	FUNC3(component, WM8960_POWER2, 0x1, 0);

	if (!freq_in || !freq_out)
		return 0;

	reg = FUNC2(component, WM8960_PLL1) & ~0x3f;
	reg |= pll_div.pre_div << 4;
	reg |= pll_div.n;

	if (pll_div.k) {
		reg |= 0x20;

		FUNC4(component, WM8960_PLL2, (pll_div.k >> 16) & 0xff);
		FUNC4(component, WM8960_PLL3, (pll_div.k >> 8) & 0xff);
		FUNC4(component, WM8960_PLL4, pll_div.k & 0xff);
	}
	FUNC4(component, WM8960_PLL1, reg);

	/* Turn it on */
	FUNC3(component, WM8960_POWER2, 0x1, 0x1);
	FUNC0(250);
	FUNC3(component, WM8960_CLOCK1, 0x1, 0x1);

	return 0;
}