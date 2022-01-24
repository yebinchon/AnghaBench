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
struct wm8995_priv {int* sysclk; unsigned int* mclk; } ;
struct snd_soc_dai {int id; int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM8995_SYSCLK_FLL1 132 
#define  WM8995_SYSCLK_FLL2 131 
#define  WM8995_SYSCLK_MCLK1 130 
#define  WM8995_SYSCLK_MCLK2 129 
#define  WM8995_SYSCLK_OPCLK 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct wm8995_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai,
				 int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component;
	struct wm8995_priv *wm8995;

	component = dai->component;
	wm8995 = FUNC3(component);

	switch (dai->id) {
	case 0:
	case 1:
		break;
	default:
		/* AIF3 shares clocking with AIF1/2 */
		return -EINVAL;
	}

	switch (clk_id) {
	case WM8995_SYSCLK_MCLK1:
		wm8995->sysclk[dai->id] = WM8995_SYSCLK_MCLK1;
		wm8995->mclk[0] = freq;
		FUNC1(dai->dev, "AIF%d using MCLK1 at %uHz\n",
			dai->id + 1, freq);
		break;
	case WM8995_SYSCLK_MCLK2:
		wm8995->sysclk[dai->id] = WM8995_SYSCLK_MCLK2;
		wm8995->mclk[1] = freq;
		FUNC1(dai->dev, "AIF%d using MCLK2 at %uHz\n",
			dai->id + 1, freq);
		break;
	case WM8995_SYSCLK_FLL1:
		wm8995->sysclk[dai->id] = WM8995_SYSCLK_FLL1;
		FUNC1(dai->dev, "AIF%d using FLL1\n", dai->id + 1);
		break;
	case WM8995_SYSCLK_FLL2:
		wm8995->sysclk[dai->id] = WM8995_SYSCLK_FLL2;
		FUNC1(dai->dev, "AIF%d using FLL2\n", dai->id + 1);
		break;
	case WM8995_SYSCLK_OPCLK:
	default:
		FUNC2(dai->dev, "Unknown clock source %d\n", clk_id);
		return -EINVAL;
	}

	FUNC0(component);

	return 0;
}