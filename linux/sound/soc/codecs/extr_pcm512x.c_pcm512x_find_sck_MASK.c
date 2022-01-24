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
struct snd_soc_dai {struct snd_soc_component* component; struct device* dev; } ;
struct snd_soc_component {int dummy; } ;
struct pcm512x_priv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct pcm512x_priv*) ; 
 unsigned long FUNC4 (int,unsigned long) ; 
 struct pcm512x_priv* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static unsigned long FUNC6(struct snd_soc_dai *dai,
				      unsigned long bclk_rate)
{
	struct device *dev = dai->dev;
	struct snd_soc_component *component = dai->component;
	struct pcm512x_priv *pcm512x = FUNC5(component);
	unsigned long sck_rate;
	int pow2;

	/* 64 MHz <= pll_rate <= 100 MHz, VREF mode */
	/* 16 MHz <= sck_rate <=  25 MHz, VREF mode */

	/* select sck_rate as a multiple of bclk_rate but still with
	 * as many factors of 2 as possible, as that makes it easier
	 * to find a fast DAC rate
	 */
	pow2 = 1 << FUNC2((FUNC3(pcm512x) - 16000000) / bclk_rate);
	for (; pow2; pow2 >>= 1) {
		sck_rate = FUNC4(FUNC3(pcm512x),
				     bclk_rate * pow2);
		if (sck_rate >= 16000000)
			break;
	}
	if (!pow2) {
		FUNC1(dev, "Impossible to generate a suitable SCK\n");
		return 0;
	}

	FUNC0(dev, "sck_rate %lu\n", sck_rate);
	return sck_rate;
}