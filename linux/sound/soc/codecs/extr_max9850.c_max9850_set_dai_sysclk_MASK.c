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
struct max9850_priv {unsigned int sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX9850_CLOCK ; 
 struct max9850_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai,
		int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component = codec_dai->component;
	struct max9850_priv *max9850 = FUNC0(component);

	/* calculate mclk -> iclk divider */
	if (freq <= 13000000)
		FUNC1(component, MAX9850_CLOCK, 0x0);
	else if (freq <= 26000000)
		FUNC1(component, MAX9850_CLOCK, 0x4);
	else if (freq <= 40000000)
		FUNC1(component, MAX9850_CLOCK, 0x8);
	else
		return -EINVAL;

	max9850->sysclk = freq;
	return 0;
}