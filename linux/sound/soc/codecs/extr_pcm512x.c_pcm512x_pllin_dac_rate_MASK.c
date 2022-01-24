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
struct pcm512x_priv {int /*<<< orphan*/  pll_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcm512x_priv*,int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 struct pcm512x_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static unsigned long FUNC3(struct snd_soc_dai *dai,
					    unsigned long osr_rate,
					    unsigned long pllin_rate)
{
	struct snd_soc_component *component = dai->component;
	struct pcm512x_priv *pcm512x = FUNC2(component);
	unsigned long dac_rate;

	if (!pcm512x->pll_out)
		return 0; /* no PLL to bypass, force SCK as DAC input */

	if (pllin_rate % osr_rate)
		return 0; /* futile, quit early */

	/* run DAC no faster than 6144000 Hz */
	for (dac_rate = FUNC1(FUNC0(pcm512x, 6144000), osr_rate);
	     dac_rate;
	     dac_rate -= osr_rate) {

		if (pllin_rate / dac_rate > 128)
			return 0; /* DAC divider would be too big */

		if (!(pllin_rate % dac_rate))
			return dac_rate;

		dac_rate -= osr_rate;
	}

	return 0;
}