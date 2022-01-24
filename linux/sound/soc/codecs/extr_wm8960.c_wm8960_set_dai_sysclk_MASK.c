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
struct wm8960_priv {unsigned int sysclk; int clk_id; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8960_CLOCK1 ; 
#define  WM8960_SYSCLK_AUTO 130 
#define  WM8960_SYSCLK_MCLK 129 
#define  WM8960_SYSCLK_PLL 128 
 struct wm8960_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int const) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int clk_id,
					unsigned int freq, int dir)
{
	struct snd_soc_component *component = dai->component;
	struct wm8960_priv *wm8960 = FUNC0(component);

	switch (clk_id) {
	case WM8960_SYSCLK_MCLK:
		FUNC1(component, WM8960_CLOCK1,
					0x1, WM8960_SYSCLK_MCLK);
		break;
	case WM8960_SYSCLK_PLL:
		FUNC1(component, WM8960_CLOCK1,
					0x1, WM8960_SYSCLK_PLL);
		break;
	case WM8960_SYSCLK_AUTO:
		break;
	default:
		return -EINVAL;
	}

	wm8960->sysclk = freq;
	wm8960->clk_id = clk_id;

	return 0;
}