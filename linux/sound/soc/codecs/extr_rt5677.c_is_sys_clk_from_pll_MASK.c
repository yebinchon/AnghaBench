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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct rt5677_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5677_GLB_CLK1 ; 
 unsigned int RT5677_SCLK_SRC_MASK ; 
 unsigned int RT5677_SCLK_SRC_PLL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct rt5677_priv* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *source,
			 struct snd_soc_dapm_widget *sink)
{
	struct snd_soc_component *component = FUNC2(source->dapm);
	struct rt5677_priv *rt5677 = FUNC1(component);
	unsigned int val;

	FUNC0(rt5677->regmap, RT5677_GLB_CLK1, &val);
	val &= RT5677_SCLK_SRC_MASK;
	if (val == RT5677_SCLK_SRC_PLL1)
		return 1;
	else
		return 0;
}