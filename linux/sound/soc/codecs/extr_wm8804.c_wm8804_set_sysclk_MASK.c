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
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM8804_CLKOUT_SRC_CLK1 131 
#define  WM8804_CLKOUT_SRC_OSCCLK 130 
 int /*<<< orphan*/  WM8804_PLL6 ; 
#define  WM8804_TX_CLKSRC_MCLK 129 
#define  WM8804_TX_CLKSRC_PLL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai,
			     int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component;

	component = dai->component;

	switch (clk_id) {
	case WM8804_TX_CLKSRC_MCLK:
		if ((freq >= 10000000 && freq <= 14400000)
				|| (freq >= 16280000 && freq <= 27000000))
			FUNC1(component, WM8804_PLL6, 0x80, 0x80);
		else {
			FUNC0(dai->dev, "OSCCLOCK is not within the "
				"recommended range: %uHz\n", freq);
			return -EINVAL;
		}
		break;
	case WM8804_TX_CLKSRC_PLL:
		FUNC1(component, WM8804_PLL6, 0x80, 0);
		break;
	case WM8804_CLKOUT_SRC_CLK1:
		FUNC1(component, WM8804_PLL6, 0x8, 0);
		break;
	case WM8804_CLKOUT_SRC_OSCCLK:
		FUNC1(component, WM8804_PLL6, 0x8, 0x8);
		break;
	default:
		FUNC0(dai->dev, "Unknown clock source: %d\n", clk_id);
		return -EINVAL;
	}

	return 0;
}