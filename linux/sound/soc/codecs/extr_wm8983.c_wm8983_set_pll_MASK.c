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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pll_div {int div2; int n; int k; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8983_PLLEN ; 
 int /*<<< orphan*/  WM8983_PLLEN_MASK ; 
 int /*<<< orphan*/  WM8983_PLL_K_1 ; 
 int /*<<< orphan*/  WM8983_PLL_K_2 ; 
 int /*<<< orphan*/  WM8983_PLL_K_3 ; 
 int /*<<< orphan*/  WM8983_PLL_N ; 
 int WM8983_PLL_PRESCALE_SHIFT ; 
 int /*<<< orphan*/  WM8983_POWER_MANAGEMENT_1 ; 
 int FUNC0 (struct pll_div*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, int pll_id,
			  int source, unsigned int freq_in,
			  unsigned int freq_out)
{
	int ret;
	struct snd_soc_component *component;
	struct pll_div pll_div;

	component = dai->component;
	if (!freq_in || !freq_out) {
		/* disable the PLL */
		FUNC1(component, WM8983_POWER_MANAGEMENT_1,
				    WM8983_PLLEN_MASK, 0);
		return 0;
	} else {
		ret = FUNC0(&pll_div, freq_out * 4 * 2, freq_in);
		if (ret)
			return ret;

		/* disable the PLL before re-programming it */
		FUNC1(component, WM8983_POWER_MANAGEMENT_1,
				    WM8983_PLLEN_MASK, 0);

		/* set PLLN and PRESCALE */
		FUNC2(component, WM8983_PLL_N,
			(pll_div.div2 << WM8983_PLL_PRESCALE_SHIFT)
			| pll_div.n);
		/* set PLLK */
		FUNC2(component, WM8983_PLL_K_3, pll_div.k & 0x1ff);
		FUNC2(component, WM8983_PLL_K_2, (pll_div.k >> 9) & 0x1ff);
		FUNC2(component, WM8983_PLL_K_1, (pll_div.k >> 18));
		/* enable the PLL */
		FUNC1(component, WM8983_POWER_MANAGEMENT_1,
					WM8983_PLLEN_MASK, WM8983_PLLEN);
	}

	return 0;
}