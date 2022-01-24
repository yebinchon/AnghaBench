#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int k; int pre_scale; int n; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8940_CLOCK ; 
 int /*<<< orphan*/  WM8940_PLLK1 ; 
 int /*<<< orphan*/  WM8940_PLLK2 ; 
 int /*<<< orphan*/  WM8940_PLLK3 ; 
 int /*<<< orphan*/  WM8940_PLLN ; 
 int /*<<< orphan*/  WM8940_POWER1 ; 
 TYPE_1__ pll_div ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *codec_dai, int pll_id,
		int source, unsigned int freq_in, unsigned int freq_out)
{
	struct snd_soc_component *component = codec_dai->component;
	u16 reg;

	/* Turn off PLL */
	reg = FUNC1(component, WM8940_POWER1);
	FUNC2(component, WM8940_POWER1, reg & 0x1df);

	if (freq_in == 0 || freq_out == 0) {
		/* Clock CODEC directly from MCLK */
		reg = FUNC1(component, WM8940_CLOCK);
		FUNC2(component, WM8940_CLOCK, reg & 0x0ff);
		/* Pll power down */
		FUNC2(component, WM8940_PLLN, (1 << 7));
		return 0;
	}

	/* Pll is followed by a frequency divide by 4 */
	FUNC0(freq_out*4, freq_in);
	if (pll_div.k)
		FUNC2(component, WM8940_PLLN,
			     (pll_div.pre_scale << 4) | pll_div.n | (1 << 6));
	else /* No factional component */
		FUNC2(component, WM8940_PLLN,
			     (pll_div.pre_scale << 4) | pll_div.n);
	FUNC2(component, WM8940_PLLK1, pll_div.k >> 18);
	FUNC2(component, WM8940_PLLK2, (pll_div.k >> 9) & 0x1ff);
	FUNC2(component, WM8940_PLLK3, pll_div.k & 0x1ff);
	/* Enable the PLL */
	reg = FUNC1(component, WM8940_POWER1);
	FUNC2(component, WM8940_POWER1, reg | 0x020);

	/* Run CODEC from PLL instead of MCLK */
	reg = FUNC1(component, WM8940_CLOCK);
	FUNC2(component, WM8940_CLOCK, reg | 0x100);

	return 0;
}