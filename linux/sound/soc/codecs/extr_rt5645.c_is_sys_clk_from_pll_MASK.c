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

/* Variables and functions */
 int /*<<< orphan*/  RT5645_GLB_CLK ; 
 unsigned int RT5645_SCLK_SRC_MASK ; 
 unsigned int RT5645_SCLK_SRC_PLL1 ; 
 unsigned int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dapm_widget *source,
			 struct snd_soc_dapm_widget *sink)
{
	struct snd_soc_component *component = FUNC1(source->dapm);
	unsigned int val;

	val = FUNC0(component, RT5645_GLB_CLK);
	val &= RT5645_SCLK_SRC_MASK;
	if (val == RT5645_SCLK_SRC_PLL1)
		return 1;
	else
		return 0;
}