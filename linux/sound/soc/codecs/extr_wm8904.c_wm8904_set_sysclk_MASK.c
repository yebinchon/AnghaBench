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
struct wm8904_priv {int sysclk_src; unsigned int mclk_rate; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM8904_CLK_FLL 129 
#define  WM8904_CLK_MCLK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 struct wm8904_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, int clk_id,
			     unsigned int freq, int dir)
{
	struct snd_soc_component *component = dai->component;
	struct wm8904_priv *priv = FUNC1(component);

	switch (clk_id) {
	case WM8904_CLK_MCLK:
		priv->sysclk_src = clk_id;
		priv->mclk_rate = freq;
		break;

	case WM8904_CLK_FLL:
		priv->sysclk_src = clk_id;
		break;

	default:
		return -EINVAL;
	}

	FUNC0(dai->dev, "Clock source is %d at %uHz\n", clk_id, freq);

	FUNC2(component);

	return 0;
}