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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct arizona_priv {int sysclk; int asyncclk; } ;

/* Variables and functions */
#define  ARIZONA_CLK_ASYNC_OPCLK 129 
#define  ARIZONA_CLK_OPCLK 128 
 int ARIZONA_OPCLK_DIV_MASK ; 
 int ARIZONA_OPCLK_DIV_SHIFT ; 
 int ARIZONA_OPCLK_SEL_MASK ; 
 unsigned int ARIZONA_OUTPUT_ASYNC_CLOCK ; 
 unsigned int ARIZONA_OUTPUT_SYSTEM_CLOCK ; 
 int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 unsigned int* arizona_opclk_ref_44k1_rates ; 
 unsigned int* arizona_opclk_ref_48k_rates ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct arizona_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,unsigned int,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
			     unsigned int clk, unsigned int freq)
{
	struct arizona_priv *priv = FUNC3(component);
	unsigned int reg;
	unsigned int *rates;
	int ref, div, refclk;

	switch (clk) {
	case ARIZONA_CLK_OPCLK:
		reg = ARIZONA_OUTPUT_SYSTEM_CLOCK;
		refclk = priv->sysclk;
		break;
	case ARIZONA_CLK_ASYNC_OPCLK:
		reg = ARIZONA_OUTPUT_ASYNC_CLOCK;
		refclk = priv->asyncclk;
		break;
	default:
		return -EINVAL;
	}

	if (refclk % 8000)
		rates = arizona_opclk_ref_44k1_rates;
	else
		rates = arizona_opclk_ref_48k_rates;

	for (ref = 0; ref < FUNC0(arizona_opclk_ref_48k_rates) &&
	     rates[ref] <= refclk; ref++) {
		div = 1;
		while (rates[ref] / div >= freq && div < 32) {
			if (rates[ref] / div == freq) {
				FUNC1(component->dev, "Configured %dHz OPCLK\n",
					freq);
				FUNC4(component, reg,
						    ARIZONA_OPCLK_DIV_MASK |
						    ARIZONA_OPCLK_SEL_MASK,
						    (div <<
						     ARIZONA_OPCLK_DIV_SHIFT) |
						    ref);
				return 0;
			}
			div++;
		}
	}

	FUNC2(component->dev, "Unable to generate %dHz OPCLK\n", freq);
	return -EINVAL;
}