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
struct wm8955_priv {unsigned int mclk_rate; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM8955_CLK_MCLK 128 
 int WM8955_MCLKDIV2 ; 
 int /*<<< orphan*/  WM8955_SAMPLE_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 struct wm8955_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, int clk_id,
			     unsigned int freq, int dir)
{
	struct snd_soc_component *component = dai->component;
	struct wm8955_priv *priv = FUNC1(component);
	int div;

	switch (clk_id) {
	case WM8955_CLK_MCLK:
		if (freq > 15000000) {
			priv->mclk_rate = freq /= 2;
			div = WM8955_MCLKDIV2;
		} else {
			priv->mclk_rate = freq;
			div = 0;
		}

		FUNC2(component, WM8955_SAMPLE_RATE,
				    WM8955_MCLKDIV2, div);
		break;

	default:
		return -EINVAL;
	}

	FUNC0(dai->dev, "Clock source is %d at %uHz\n", clk_id, freq);

	return 0;
}